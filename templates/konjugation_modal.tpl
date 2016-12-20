<!-- Modal -->
<div id="konjugation_{$row.k_wort}" class="modal fade" role="dialog">
	<div class="modal-dialog modal-lg">
	<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Konjugation von {$row.k_wort}</h4>
			</div>
			<div class="modal-body">

<table class="table table-striped">
	<thead>
	<tr>
		<th></th>
		<th>Infinitiv</th>
		<th>Gerundium</th>
		<th>Partizip m s</th>
		<th>Partizip m p</th>
		<th>Partizip f s</th>
		<th>Partizip f p</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td>Unpersönliche Formen</td>
		<td>{$row_verb.infinitiv}</td>
		<td>{$row_verb.gerundi}</td>
		<td>{$row_verb.parti_1}</td>
		<td>{$row_verb.parti_2}</td>
		<td>{$row_verb.parti_3}</td>
		<td>{$row_verb.parti_4}</td>
	</tr>
	</tbody>
	<thead>
	<tr>
		<th>Tempus</th>
		<th>jo</th>
		<th>tu</th>
		<th>ell</th>
		<th>nosaltres</th>
		<th>vosaltres</th>
		<th>ells</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td>Präsens</td>
		<td>{$row_verb.pres_1}</td>
		<td>{$row_verb.pres_2}</td>
		<td>{$row_verb.pres_3}</td>
		<td>{$row_verb.pres_4}</td>
		<td>{$row_verb.pres_5}</td>
		<td>{$row_verb.pres_6}</td>
	</tr>
	<tr>
		<td>Imperfekt</td>
		<td>{$row_verb.imp_1}</td>
		<td>{$row_verb.imp_2}</td>
		<td>{$row_verb.imp_3}</td>
		<td>{$row_verb.imp_4}</td>
		<td>{$row_verb.imp_5}</td>
		<td>{$row_verb.imp_6}</td>
	</tr>
	<tr>
		<td>Präteritum</td>
		<td>{$row_verb.pret_1}</td>
		<td>{$row_verb.pret_2}</td>
		<td>{$row_verb.pret_3}</td>
		<td>{$row_verb.pret_4}</td>
		<td>{$row_verb.pret_5}</td>
		<td>{$row_verb.pret_6}</td>
	</tr>
	<tr>
		<td>Futur</td>
		<td>{$row_verb.fut_1}</td>
		<td>{$row_verb.fut_2}</td>
		<td>{$row_verb.fut_3}</td>
		<td>{$row_verb.fut_4}</td>
		<td>{$row_verb.fut_5}</td>
		<td>{$row_verb.fut_6}</td>
	</tr>
	<tr>
		<td>Konditional</td>
		<td>{$row_verb.con_1}</td>
		<td>{$row_verb.con_2}</td>
		<td>{$row_verb.con_3}</td>
		<td>{$row_verb.con_4}</td>
		<td>{$row_verb.con_5}</td>
		<td>{$row_verb.con_6}</td>
	</tr>
	<tr>
		<td colspan="7"></td>
	</tr>
	<tr>
		<td>Präsens Subjunktiv</td>
		<td>{$row_verb.spres_1}</td>
		<td>{$row_verb.spres_2}</td>
		<td>{$row_verb.spres_3}</td>
		<td>{$row_verb.spres_4}</td>
		<td>{$row_verb.spres_5}</td>
		<td>{$row_verb.spres_6}</td>
	</tr>
	<tr>
		<td>Imperfekt Subjunktiv</td>
		<td>{$row_verb.simp_1}</td>
		<td>{$row_verb.simp_2}</td>
		<td>{$row_verb.simp_3}</td>
		<td>{$row_verb.simp_4}</td>
		<td>{$row_verb.simp_5}</td>
		<td>{$row_verb.simp_6}</td>
	</tr>
	<tr>
		<td colspan="7"></td>
	</tr>
	<tr>
		<td>Imperativ</td>
		<td>—</td>
		<td>{$row_verb.impa_2}</td>
		<td>{$row_verb.impa_3}</td>
		<td>{$row_verb.impa_4}</td>
		<td>{$row_verb.impa_5}</td>
		<td>{$row_verb.impa_6}</td>
	</tr>
	</tbody>
</table>

			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">schließen</button>
			</div>
		</div>
	</div>
</div>
