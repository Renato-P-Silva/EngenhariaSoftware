<%@ page import="br.ufrpe.uag.Disciplina" %>



<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'nomeDisciplina', 'error')} required">
	<label for="nomeDisciplina">
		<g:message code="disciplina.nomeDisciplina.label" default="Nome Disciplina" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomeDisciplina" maxlength="120" required="" value="${disciplinaInstance?.nomeDisciplina}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'codigoDisciplina', 'error')} required">
	<label for="codigoDisciplina">
		<g:message code="disciplina.codigoDisciplina.label" default="Codigo Disciplina" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codigoDisciplina" required="" value="${disciplinaInstance?.codigoDisciplina}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'cargaHoraria', 'error')} required">
	<label for="cargaHoraria">
		<g:message code="disciplina.cargaHoraria.label" default="Carga Horaria" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cargaHoraria" type="number" value="${disciplinaInstance.cargaHoraria}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'turma', 'error')} required">
	<label for="turma">
		<g:message code="disciplina.turma.label" default="Turma" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="turma" required="" value="${disciplinaInstance?.turma}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'semestre', 'error')} required">
	<label for="semestre">
		<g:message code="disciplina.semestre.label" default="Semestre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="semestre" required="" value="${disciplinaInstance?.semestre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'periodo', 'error')} required">
	<label for="periodo">
		<g:message code="disciplina.periodo.label" default="Periodo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="periodo" type="number" value="${disciplinaInstance.periodo}" required=""/>

</div>

