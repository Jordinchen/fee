<div class="col-sm-3">
    <h2>Themenbereiche</h2>
    <div class="list-group">
        {foreach $myTopics as $topic}
            <a href="{$baseLang}.php?topic={$topic.short}" class="list-group-item {$topic.active}">{$topic.name}</a>
        {/foreach}
    </div>
</div>
