<!-- Modal -->
<div id="konjugation_{$word.k_wort}" class="modal fade" role="dialog">
	<div class="modal-dialog modal-lg">
	<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Konjugation von {$word.k_wort}</h4>
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
		<td>{$word.conj.infinitiv}</td>
		<td>{$word.conj.gerundi}</td>
		<td>{$word.conj.parti_1}</td>
		<td>{$word.conj.parti_2}</td>
		<td>{$word.conj.parti_3}</td>
		<td>{$word.conj.parti_4}</td>
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
		<td>{$word.conj.pres_1}</td>
		<td>{$word.conj.pres_2}</td>
		<td>{$word.conj.pres_3}</td>
		<td>{$word.conj.pres_4}</td>
		<td>{$word.conj.pres_5}</td>
		<td>{$word.conj.pres_6}</td>
	</tr>
	<tr>
		<td>Imperfekt</td>
		<td>{$word.conj.imp_1}</td>
		<td>{$word.conj.imp_2}</td>
		<td>{$word.conj.imp_3}</td>
		<td>{$word.conj.imp_4}</td>
		<td>{$word.conj.imp_5}</td>
		<td>{$word.conj.imp_6}</td>
	</tr>
	<tr>
		<td>Präteritum</td>
		<td>{$word.conj.pret_1}</td>
		<td>{$word.conj.pret_2}</td>
		<td>{$word.conj.pret_3}</td>
		<td>{$word.conj.pret_4}</td>
		<td>{$word.conj.pret_5}</td>
		<td>{$word.conj.pret_6}</td>
	</tr>
	<tr>
		<td>Futur</td>
		<td>{$word.conj.fut_1}</td>
		<td>{$word.conj.fut_2}</td>
		<td>{$word.conj.fut_3}</td>
		<td>{$word.conj.fut_4}</td>
		<td>{$word.conj.fut_5}</td>
		<td>{$word.conj.fut_6}</td>
	</tr>
	<tr>
		<td>Konditional</td>
		<td>{$word.conj.con_1}</td>
		<td>{$word.conj.con_2}</td>
		<td>{$word.conj.con_3}</td>
		<td>{$word.conj.con_4}</td>
		<td>{$word.conj.con_5}</td>
		<td>{$word.conj.con_6}</td>
	</tr>
	<tr>
		<td colspan="7"></td>
	</tr>
	<tr>
		<td>Präsens Subjunktiv</td>
		<td>{$word.conj.spres_1}</td>
		<td>{$word.conj.spres_2}</td>
		<td>{$word.conj.spres_3}</td>
		<td>{$word.conj.spres_4}</td>
		<td>{$word.conj.spres_5}</td>
		<td>{$word.conj.spres_6}</td>
	</tr>
	<tr>
		<td>Imperfekt Subjunktiv</td>
		<td>{$word.conj.simp_1}</td>
		<td>{$word.conj.simp_2}</td>
		<td>{$word.conj.simp_3}</td>
		<td>{$word.conj.simp_4}</td>
		<td>{$word.conj.simp_5}</td>
		<td>{$word.conj.simp_6}</td>
	</tr>
	<tr>
		<td colspan="7"></td>
	</tr>
	<tr>
		<td>Imperativ</td>
		<td>—</td>
		<td>{$word.conj.impa_2}</td>
		<td>{$word.conj.impa_3}</td>
		<td>{$word.conj.impa_4}</td>
		<td>{$word.conj.impa_5}</td>
		<td>{$word.conj.impa_6}</td>
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
