
<%@ page import="br.ufrpe.uag.Disciplina" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'disciplina.label', default: 'Disciplina')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-disciplina" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-disciplina" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nomeDisciplina" title="${message(code: 'disciplina.nomeDisciplina.label', default: 'Nome Disciplina')}" />
					
						<g:sortableColumn property="codigoDisciplina" title="${message(code: 'disciplina.codigoDisciplina.label', default: 'Codigo Disciplina')}" />
					
						<g:sortableColumn property="cargaHoraria" title="${message(code: 'disciplina.cargaHoraria.label', default: 'Carga Horaria')}" />
					
						<g:sortableColumn property="turma" title="${message(code: 'disciplina.turma.label', default: 'Turma')}" />
					
						<g:sortableColumn property="semestre" title="${message(code: 'disciplina.semestre.label', default: 'Semestre')}" />
					
						<g:sortableColumn property="periodo" title="${message(code: 'disciplina.periodo.label', default: 'Periodo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${disciplinaInstanceList}" status="i" var="disciplinaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${disciplinaInstance.id}">${fieldValue(bean: disciplinaInstance, field: "nomeDisciplina")}</g:link></td>
					
						<td>${fieldValue(bean: disciplinaInstance, field: "codigoDisciplina")}</td>
					
						<td>${fieldValue(bean: disciplinaInstance, field: "cargaHoraria")}</td>
					
						<td>${fieldValue(bean: disciplinaInstance, field: "turma")}</td>
					
						<td>${fieldValue(bean: disciplinaInstance, field: "semestre")}</td>
					
						<td>${fieldValue(bean: disciplinaInstance, field: "periodo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<g:link controller="Disciplina" action="export">Expotar</g:link>
			<div class="pagination">
				<g:paginate total="${disciplinaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
