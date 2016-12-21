{include file="header.tpl"}
<div class="container runter">
	<div class="row">
		{include file="menu_topics.tpl"}
		<div class="col-sm-9">
			{if $topic == ""}
				<h1>Bereich auswählen</h1>
				<h2>Elegeix un tema</h2>
			{else}
				<h2>Inhalt</h2>

				<table class="table table-striped">
					<thead>
						<tr>
							<th>Katalanisch</th>
							<th>Deutsch</th>
						</tr>
					</thead>
					<tbody>
{foreach $words as $word}
	<tr>
		<td>
			{$word.k_vorfeld_ps} 
			<span class="k-wort">{$word.k_wort} {$word.k_nachfeld}</span>
			<span class="label label-{$word.k_wortart_ps_lc}">{$word.k_wortart_ps}</span>
			{if $word.k_wortart eq 3 and $word.k_wort eq $word.conj.infinitiv}
				<span class="label label-{$word.k_wortart_ps_lc}" data-toggle="modal" 
					data-target="#konjugation_{$word.k_wort}">
					<span class="fa fa-fw fa-plus"></span>
				</span>
			{/if}
			<br /><span class="ipa">[{$word.k_ipa}]</span>
			{if $word.k_wortart eq 3 and $word.k_wort eq $word.conj.infinitiv}
				{include file="konjugation_modal.tpl"}
			{/if}
		</td>
		<td>
			{$word.d_vorfeld_ps}{$word.d_wort}
		</td>
	</tr>
{/foreach}
					</tbody>
				</table>
			{/if}
		</div>
	</div>
</div>
{include file="footer.tpl"}
