package br.ufrpe.uag



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import pl.touk.excel.export.WebXlsxExporter

@Transactional(readOnly = true)
class DisciplinaController {
	
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
	def export(){
		def headers = ['codigoDisciplina', 'nomeDisciplina', 'periodo', 'semestre', 'turma', 'cargaHoraria' ]				
			new WebXlsxExporter().with {
				setResponseHeaders(response)
				fillHeader(headers)
				int i =2;
				def list = Disciplina.list(params)
				for (e in list){
					fillRow([e.getCodigoDisciplina(), e.getNomeDisciplina(), e.getPeriodo(), e.getSemestre(), e.getTurma(), e.getCargaHoraria()], i)
					i = i + 1
				}
				save(response.outputStream)
			}
	}

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Disciplina.list(params), model:[disciplinaInstanceCount: Disciplina.count()]		
    }

    def show(Disciplina disciplinaInstance) {
        respond disciplinaInstance
    }

    def create() {
        respond new Disciplina(params)
    }

    @Transactional
    def save(Disciplina disciplinaInstance) {
        if (disciplinaInstance == null) {
            notFound()
            return
        }

        if (disciplinaInstance.hasErrors()) {
            respond disciplinaInstance.errors, view:'create'
            return
        }

        disciplinaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'disciplina.label', default: 'Disciplina'), disciplinaInstance.id])
                redirect disciplinaInstance
            }
            '*' { respond disciplinaInstance, [status: CREATED] }
        }
    }

    def edit(Disciplina disciplinaInstance) {
        respond disciplinaInstance
    }

    @Transactional
    def update(Disciplina disciplinaInstance) {
        if (disciplinaInstance == null) {
            notFound()
            return
        }

        if (disciplinaInstance.hasErrors()) {
            respond disciplinaInstance.errors, view:'edit'
            return
        }

        disciplinaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Disciplina.label', default: 'Disciplina'), disciplinaInstance.id])
                redirect disciplinaInstance
            }
            '*'{ respond disciplinaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Disciplina disciplinaInstance) {

        if (disciplinaInstance == null) {
            notFound()
            return
        }

        disciplinaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Disciplina.label', default: 'Disciplina'), disciplinaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'disciplina.label', default: 'Disciplina'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
		
}
