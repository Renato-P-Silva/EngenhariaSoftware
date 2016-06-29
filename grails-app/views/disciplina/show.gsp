
<%@ page import="br.ufrpe.uag.Disciplina" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'disciplina.label', default: 'Disciplina')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-disciplina" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-disciplina" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list disciplina">
			
				<g:if test="${disciplinaInstance?.nomeDisciplina}">
				<li class="fieldcontain">
					<span id="nomeDisciplina-label" class="property-label"><g:message code="disciplina.nomeDisciplina.label" default="Nome Disciplina" /></span>
					
						<span class="property-value" aria-labelledby="nomeDisciplina-label"><g:fieldValue bean="${disciplinaInstance}" field="nomeDisciplina"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${disciplinaInstance?.codigoDisciplina}">
				<li class="fieldcontain">
					<span id="codigoDisciplina-label" class="property-label"><g:message code="disciplina.codigoDisciplina.label" default="Codigo Disciplina" /></span>
					
						<span class="property-value" aria-labelledby="codigoDisciplina-label"><g:fieldValue bean="${disciplinaInstance}" field="codigoDisciplina"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${disciplinaInstance?.cargaHoraria}">
				<li class="fieldcontain">
					<span id="cargaHoraria-label" class="property-label"><g:message code="disciplina.cargaHoraria.label" default="Carga Horaria" /></span>
					
						<span class="property-value" aria-labelledby="cargaHoraria-label"><g:fieldValue bean="${disciplinaInstance}" field="cargaHoraria"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${disciplinaInstance?.turma}">
				<li class="fieldcontain">
					<span id="turma-label" class="property-label"><g:message code="disciplina.turma.label" default="Turma" /></span>
					
						<span class="property-value" aria-labelledby="turma-label"><g:fieldValue bean="${disciplinaInstance}" field="turma"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${disciplinaInstance?.semestre}">
				<li class="fieldcontain">
					<span id="semestre-label" class="property-label"><g:message code="disciplina.semestre.label" default="Semestre" /></span>
					
						<span class="property-value" aria-labelledby="semestre-label"><g:fieldValue bean="${disciplinaInstance}" field="semestre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${disciplinaInstance?.periodo}">
				<li class="fieldcontain">
					<span id="periodo-label" class="property-label"><g:message code="disciplina.periodo.label" default="Periodo" /></span>
					
						<span class="property-value" aria-labelledby="periodo-label"><g:fieldValue bean="${disciplinaInstance}" field="periodo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:disciplinaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${disciplinaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
