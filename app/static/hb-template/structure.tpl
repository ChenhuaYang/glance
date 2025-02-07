

<!-- Nav tabs -->
<ul class="nav nav-pills">
{{#each pos_index}}
  <li {{#ifCond @index 0}} class="active"{{/ifCond}}>
    <a href="#tab-{{@key}}" data-toggle="pill">
      <span class="badge pull-right">{{this}}</span>
      <span class="pos-tab-label">{{#toUpperCase @key}}{{/toUpperCase}}</span>
    </a>
  </li>
{{/each}}

</ul>

<!-- Tab panes -->
<div class="tab-content">
{{#each pos_index}}
  
  <div class="tab-pane fade {{#ifCond @index 0}} in active{{/ifCond}}" id="tab-{{@key}}">
  		
  		
		<div class="panel-group" id="accordion">
		{{#../contents}}

			{{#ifCond POS @key}}
			  <div class="panel panel-default">
			    <div class="panel-heading">
			      <h4 class="panel-title">
			        <a data-toggle="collapse" data-parent="#accordion" href="#collapse-{{@index}}">
			          <span class="panel-title-pos">{{POS}}</span> <span class="panel-title-definition">{{definition}}</span>
			        </a>
			      </h4>
			    </div>
			    <div id="collapse-{{@index}}" class="panel-collapse collapse {{#if @first}}in{{/if}}">
			      <div class="panel-body">
			      	
			      	<ul>
					{{#example}}
						<li>{{.}}</li>
					{{/example}}

					</ul>
			        
			      </div>
			    </div>
			  </div>
			{{/ifCond}}
		{{/../contents}}
		</div>
		


  </div>

{{/each}}
  
</div>




