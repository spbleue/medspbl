<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<style>
.form-horizontal .control-label {
	text-align: left;
}

.btn-add {
	color: white;
	background-color: #0394e3;
}

.btn-add:hover {
	background-color: #0077d0;
	border: 2px solid #0077d0;
}
.btn-info, .btn-warning, .btn-danger{
	color: white;
	background-color: #0394e3;
	border-color: transparent;
}

</style>

<div class="container-fluid"
	style="width: 90%; height: auto; margin: 0 auto; padding: 10px; position: relative;">
	<div class="row">
		<form:form id="div_add" method="post"
			action="/MedicalGap/pressesantes/add" modelAttribute="pressesantes"
			class="form-horizontal">

			<form:input path="idPresse" type="hidden" class="form-control"
				id="idPresse" placeholder="idPresse" />

			<div class="col-xs-10 col-md-6">
				<div class="form-group">
					<label class="col-md-4 col-xs-10 control-label">Date :</label>
					<div class="col-md-5 col-xs-12">
						<form:input path="date" type="date" class="form-control" id="date" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 col-xs-10 control-label">Auteur :</label>
					<div class="col-md-5 col-xs-12">
						<form:input path="auteur" type="text" class="form-control"
							id="auteur" placeholder="auteur" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 col-xs-10  control-label">Titre :</label>
					<div class="col-md-5 col-xs-12">
						<form:input path="titre" type="text" class="form-control"
							id="titre" placeholder="titre" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 col-xs-10 control-label">Produit :</label>
					<div class="col-md-5 col-xs-12">
						<form:input path="produit" type="text" class="form-control"
							id="produit" placeholder="produit" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 col-xs-10 control-label">Impact :</label>
					<div class="col-md-5 col-xs-12">
						<form:input path="impact" type="text" class="form-control"
							id="impact" placeholder="impact" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 col-xs-10 control-label">Type de presse de sant� :</label>
					<div class="col-md-5 col-xs-12">
						<form:select path="type" items="${listtypeps}"
							itemValue="typePresse" itemLabel="typePresse" class=" form-control"
							id="typePresse" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 col-xs-10 control-label">Soci�t� :</label>
					<div class="col-md-5 col-xs-12">
						<form:input path="compagny" type="text" class="form-control"
							id="compagny" placeholder="compagny" />
					</div>
				</div>

			
			</div>
			<div class="col-xs-10 col-md-6">
				<div class="form-group">
					<label class="col-md-5 col-xs-10 control-label">Reference :</label>
					<div class="col-md-5 col-xs-12">
						<form:input path="reference" type="text" class="form-control"
							id="reference" placeholder="reference" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-5 col-xs-10 control-label">Conclusion :</label>
					<div class="col-md-5 col-xs-12">
						<form:textarea path="conclusion" rows="4" cols="70"
							class="form-control" id="conclusion"
							placeholder="conclusion" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-5 col-xs-10 control-label">Gaps, Insight ou
						Recommendation :</label>
					<div class="col-md-5 col-xs-12">
						<form:textarea path="gapsInsightReco" rows="4" cols="90"
							class="form-control" id="gapsInsightReco"
							placeholder="gapsInsightReco" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-5 col-xs-10 control-label">Responsable :</label>
					<div class="col-md-5 col-xs-12">
						<form:input path="responsable" type="text" class="form-control"
							id="responsable" placeholder="responsable" />
					</div>
				</div>
			</div>

			<div class="col-md-12 col-xs-12">
				<div class="form-group">
					<div class="col-md-11 col-xs-10">
						<button type="submit" class="btn  btn-add btn-lg pull-right">
							<img alt="delete" src="/MedicalGap/resources/images/icone_add.png"
								style="max-height: 14px; max-width: 14px;"> Ajouter
						</button>

					</div>
				</div>
			</div>
		</form:form>
		<form:form id="div_modify" modelAttribute="pressesantes"
			class="form-horizontal">

			<form:input path="idPresse" type="hidden" class="form-control"
				id="idPresse" placeholder="idPresse" />
			<div class="col-xs-10 col-md-6">

				<div class="form-group">
					<label class="col-md-4 col-xs-10 control-label">Date :</label>
					<div class="col-md-5 col-xs-12">
						<form:input path="date" type="date" class="form-control"
							id="date_m" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 col-xs-10 control-label">Auteur :</label>
					<div class="col-md-5 col-xs-12">
						<form:input path="auteur" type="text" class="form-control"
							id="auteur_m" placeholder="auteur" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 col-xs-10 control-label">Titre :</label>
					<div class="col-md-5 col-xs-12">
						<form:input path="titre" type="text" class="form-control"
							id="titre_m" placeholder="titre" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 col-xs-10 control-label">Produit :</label>
					<div class="col-md-5 col-xs-12">
						<form:input path="produit" type="text" class="form-control"
							id="produit_m" placeholder="produit" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 col-xs-10 control-label">Impact :</label>
					<div class="col-md-5 col-xs-12">
						<form:input path="impact" type="text" class="form-control"
							id="impact_m" placeholder="impact" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 col-xs-10 control-label">Type de presse de sant� :</label>
					<div class="col-md-5 col-xs-12">
						<form:select path="type" items="${listtypeps}"
							itemValue="typePresse" itemLabel="typePresse" class=" form-control"
							id="typePresse_m" />
					</div>
				</div>

				<div class="form-group">
				<label class="col-md-4 col-xs-10 control-label">Soci�t� :</label>
					<div class="col-md-5 col-xs-12">
						<form:input path="compagny" type="text" class="form-control"
							id="compagny_m" placeholder="compagny" />
					</div>
				</div>
			</div>
			<div class="col-xs-10 col-md-6">
				<div class="form-group">
					<label class="col-md-5 col-xs-10 control-label">Reference :</label>
					<div class="col-md-5 col-xs-12">
						<form:input path="reference" type="text" class="form-control"
							id="reference_m" placeholder="reference" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-5 col-xs-10 control-label">Conclusion :</label>
					<div class="col-md-5 col-xs-12">
						<form:textarea path="conclusion" rows="4" cols="70"
							class="form-control" id="conclusion_m"
							placeholder="conclusion" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-5 col-xs-10 control-label">Gaps, Insight ou
						Recommendation :</label>
					<div class="col-md-5 col-xs-12">
						<form:textarea path="gapsInsightReco" rows="4" cols="90"
							class="form-control" id="gapsInsightReco_m"
							placeholder="gapsInsightReco" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-5 col-xs-10 control-label">Responsable :</label>
					<div class="col-md-5 col-xs-12">
						<form:input path="responsable" type="text" class="form-control"
							id="responsable_m" placeholder="responsable" />
					</div>
				</div>
			</div>
			<div class="col-md-12 col-xs-12">
				<div class="form-group">
					<div class="col-md-11 col-xs-10">
						<button id="btn_form_mod" type="button" class="btn  btn-add btn-lg pull-right">
							<img alt="delete" src="/MedicalGap/resources/images/icone_edit.png"
								style="max-height: 14px; max-width: 14px;">
							Modifier
						</button>
					</div>
				</div>
			</div>
		</form:form>
	</div>
</div>