<?php 

global $o3;

if ( $this->data !== false ) {

?>

<form class="form-horizontal">
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-6">						
				<div class="form-group">
					<label class="col-sm-4 control-label">{o3_lang:CPR number}</label>
					<div class="col-sm-8">
						<p class="form-control-static"><?php echo o3_html($this->data['cpr']); ?></p>
					</div>

					<div class="spacer"></div>
				
					<label class="col-sm-4 control-label">{o3_lang:Date}</label>
					<div class="col-sm-8">
						<p class="form-control-static"><?php echo o3_html(display_date($this->data['created'])); ?></p>
					</div>

					<div class="spacer"></div>

					<label class="col-sm-4 control-label">{o3_lang:Score}</label>
					<div class="col-sm-8">
						<p class="form-control-static">{o3_lang:score-<?php echo o3_html($this->data['score']); ?>}</p>
					</div>

					<div class="spacer"></div>

					<label class="col-sm-4 control-label">{o3_lang:Left ear}</label>
					<div class="col-sm-8">
						<p class="form-control-static"><?php echo o3_html($this->data['score_left']); ?>%</p>
					</div>

					<div class="spacer"></div>

					<label class="col-sm-4 control-label">{o3_lang:Right ear}</label>
					<div class="col-sm-8">
						<p class="form-control-static"><?php echo o3_html($this->data['score_right']); ?>%</p>
					</div>

					<div class="spacer"></div>

					<label class="col-sm-4 control-label">{o3_lang:Threshold left}</label>
					<div class="col-sm-8">
						<p class="form-control-static"><?php echo o3_html($this->data['threshold_left']); ?> hz</p>
					</div>

					<div class="spacer"></div>

					<label class="col-sm-4 control-label">{o3_lang:Threshold right}</label>
					<div class="col-sm-8">
						<p class="form-control-static"><?php echo o3_html($this->data['threshold_right']); ?> hz</p>
					</div>

					<div class="spacer"></div>
				</div>
			</div>
		</div>
		<div class="row"> 
			<div class="col-sm-6">
				
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">{o3_lang:Left ear}</h3>
					</div>
					<div class="panel-body">

						<?php
						$i = 0;
						while ( $i < 10000 ) {
							
							if ( isset($this->data['left_result'][$i]) ) {
								$value = $this->data['left_result'][$i];

								?>
								<ul class="list-group">
									<li class="list-group-item list-group-item-<?php echo $value['correct'] ? 'success' : 'danger'; ?>">
										<span class="badge">{o3_lang:answer-<?php echo $value['answer']; ?>}</span>
										<?php echo o3_html($value['hz']).' hz'; ?> 
									</li>
								</ul>				
								<?php

							}
							$i++;	
						}
						?>

					</div>
				</div>	
			</div>
			<div class="col-sm-6">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">{o3_lang:Right ear}</h3>
					</div>
					<div class="panel-body">

						<?php
						$i = 0;
						while ( $i < 10000 ) {
							
							if ( isset($this->data['right_result'][$i]) ) {
								$value = $this->data['right_result'][$i];

								?>
								<ul class="list-group">
									<li class="list-group-item list-group-item-<?php echo $value['correct'] ? 'success' : 'danger'; ?>">
										<span class="badge">{o3_lang:answer-<?php echo $value['answer']; ?>}</span>
										<?php echo o3_html($value['hz']).' hz'; ?> 
									</li>
								</ul>				
								<?php

							}
							$i++;	
						}
						?>

					</div>
				</div>

			</div>
		</div>
	</div>
</div>
<?php

} else {
	echo "<p>{o3_lang:The requested result was not found. Please try again.}</p>";
}

?>