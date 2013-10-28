 <article class="module width_half">
  <header><h3>General Statistics</h3></header>
  <div class="module_content">
    <table width="100%">
      <tbody>
        <tr>
          <th align="left" width="50%">Pool Hash Rate</th>
          <td width="70%"><span id="b-hashrate"></span> {$GLOBAL.hashunits.pool}</td>
        </tr>
        <tr>
          <th align="left">Pool Efficiency</td>
          <td>{if $GLOBAL.roundshares.valid > 0}{($GLOBAL.roundshares.valid / ($GLOBAL.roundshares.valid + $GLOBAL.roundshares.invalid) * 100)|number_format:"2"}%{else}0%{/if}</td>
        </tr>
        <tr>
          <th align="left">Current Active Workers</td>
          <td id="b-workers"></td>
        </tr>
        <tr>
          <th align="left">Current Difficulty</td>
      {if ! $GLOBAL.website.chaininfo.disabled}
          <td><a href="{$GLOBAL.website.chaininfo.url}" target="_new"><font size="2"><span id="b-diff"></span></font></a></td>
      {else}
          <td><font size="2"><span id="b-diff"></span></font></td>
      {/if}
        </tr>
        <tr>
          <th align="left">Est. Avg. Time per Round</td>
          <td>{$ESTTIME|seconds_to_words}</td>
        </tr>
        <tr>
          <th align="left">Est. Shares this Round</td>
          <td id="b-target"></td>
        </tr>

      </tbody>
    </table>
  </div>
  
  <header><h3>Block Statistics</h3></header>
  <div class="module_content">
    <table width="100%">
      <tbody>
    {if ! $GLOBAL.website.blockexplorer.disabled}
        <tr>
          <th align="left" width="50%">Next Network Block</td>
          <td>{$CURRENTBLOCK + 1} &nbsp;&nbsp;<font size="1"> (Current: <a href="{$GLOBAL.website.blockexplorer.url}{$CURRENTBLOCKHASH}" target="_new">{$CURRENTBLOCK})</a></font></td>
        </tr>
    {else}
        <tr>
          <th align="left">Next Network Block</td>
          <td>{$CURRENTBLOCK + 1} &nbsp;&nbsp; (Current: {$CURRENTBLOCK})</td>
        </tr>
    {/if}
        <tr>
          <th align="left">Last Block Found</td>
          <td><a href="{$smarty.server.PHP_SELF}?page=statistics&action=round&height={$LASTBLOCK}" target="_new">{$LASTBLOCK|default:"0"}</a></td>
        </tr>
        <tr>
          <th align="left">All Blocks - Found / Valid / Orphan</td>
          <td>{$FOUNDALLVALID + $FOUNDALLORPHAN} / {$FOUNDALLVALID} / {$FOUNDALLORPHAN}</td>
        </tr>
        <tr>
          <th align="left">Blocks last hour - Found / Valid / Orphan</td>
          <td>{$FOUNDLASTHOURVALID + $FOUNDLASTHOURORPHAN} / {$FOUNDLASTHOURVALID} / {$FOUNDLASTHOURORPHAN}</td>
        </tr>
        <tr>
          <th align="left">Blocks last 24 hours - Found / Valid / Orphan</td>
          <td>{$FOUNDLAST24HOURSVALID + $FOUNDLAST24HOURSORPHAN} / {$FOUNDLAST24HOURSVALID} / {$FOUNDLAST24HOURSORPHAN}</td>
        </tr>
        <tr>
          <th align="left">Blocks last 7 days - Found / Valid / Orphan</td>
          <td>{$FOUNDLAST7DAYSVALID + $FOUNDLAST7DAYSORPHAN} / {$FOUNDLAST7DAYSVALID} / {$FOUNDLAST7DAYSORPHAN}</td>
        </tr>
        <tr>
          <th align="left">Blocks last 4 weeks - Found / Valid / Orphan</td>
          <td>{$FOUNDLAST4WEEKSVALID + $FOUNDLAST4WEEKSORPHAN} / {$FOUNDLAST4WEEKSVALID} / {$FOUNDLAST4WEEKSORPHAN}</td>
        </tr>
        <tr>
          <th align="left">Time Since Last Block</td>
          <td>{$TIMESINCELAST|seconds_to_words}</td>
        </tr>
      </tbody>
    </table>
    
        
  </div>
  <footer>
{if !$GLOBAL.website.api.disabled}<ul><li>These stats are also available in JSON format <a href="{$smarty.server.PHP_SELF}?page=api&action=getpoolstatus&api_key={$GLOBAL.userdata.api_key|default:""}">HERE</a></li></ul>{/if}
  </footer>
</article>
