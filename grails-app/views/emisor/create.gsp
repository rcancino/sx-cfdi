<html>
<head>
    <meta charset="UTF-8">
    <meta name="layout" content="createForm"/>
    <title>Alta de emisor</title>
</head>
<body>

<content tag="header">
    <h3>Alta de emisor de CFDI's</h3>
</content>

<content tag="operaciones">
    <ul class="nav nav-pills nav-stacked">
        <li><g:link action="index">
            <span class="glyphicon glyphicon-arrow-left"></span> Emisores
        </g:link>
        </li>
        <li><g:link action="create">
            <span class="glyphicon glyphicon-plus"></span> Nuevo
        </g:link>
        </li>
    </ul>
</content>

<content tag="formTitle">Datos generales</content>

<content tag="form">

    <g:hasErrors bean="${emisorInstance}">
        <div class="alert alert-danger">
            <g:renderErrors bean="${emisorInstance}" as="list" />
        </div>
    </g:hasErrors>

    <g:form class="form-horizontal" action="save" >

        <f:with bean="${emisorInstance }">
            <f:field property="nombre" widget-class="form-control uppercase-field " widget-autofocus="on"/>
            <f:field property="rfc" widget-class="form-control uppercase-field"/>
            <f:field property="clave" widget-class="form-control uppercase-field"/>
            <f:field property="regimen" widget-class="form-control"/>
            <g:render template="/common/direccion" bean="${emisorInstance}"/>

        </f:with>

        <div class="form-group">
            <div class="col-sm-offset-9 col-sm-2">
                <button type="submit" class="btn btn-default">
                    <span class="glyphicon glyphicon-floppy-save"></span> Salvar
                </button>
            </div>
        </div>
    </g:form>

</content>

</body>
</html>