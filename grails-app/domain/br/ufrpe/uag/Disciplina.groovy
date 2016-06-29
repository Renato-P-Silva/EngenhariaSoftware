package br.ufrpe.uag

class Disciplina {
	
	String codigoDisciplina
	String nomeDisciplina
	int periodo
	String semestre
	String turma
	int cargaHoraria

	//TODO incluir disciplinas pre-requisitos
	//TODO incluir professores responsaveis
	//TODO incluir alunos
	
	//static hasOne = [professor: Professor, periodo: Periodo]
	//static hasMany = [aluno: Aluno]
	
    static constraints = {
		nomeDisciplina size: 5..120
		codigoDisciplina blank: false
		cargaHoraria blank: false
		turma blank: false
		semestre blank: false
		//professor unique: true
		//periodo unique: true
		
    }
	
	static mapping = { id generator: 'increment' }
}
