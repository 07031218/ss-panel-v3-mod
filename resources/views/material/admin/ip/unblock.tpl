

{include file='admin/main.tpl'}







	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">���IP��¼</h1>
			</div>
		</div>
		<div class="container">
			<div class="col-lg-12 col-lg-push-0 col-sm-10 col-sm-push-1">
				<section class="content-inner margin-top-no">
					
					<div class="card">
						<div class="card-main">
							<div class="card-inner">
								<p>����������Ľ��IP��¼��</p>
							</div>
						</div>
					</div>
					
					<div class="table-responsive">
						{$logs->render()}
						
						<table class="table">
							<tr>
								<th>ID</th>
								<th>�û�ID</th>
								<th>�û���</th>
								<th>IP</th>
								<th>������</th>
								<th>ʱ��</th>
							</tr>
							{foreach $logs as $log}
								<tr>
									<td>#{$log->id}</td>
									<td>{$log->user()->id}</td>
									<td>{$log->user()->user_name}</td>
									<td>{$log->ip}</td>
									<td>{$loc[$log->ip]}</td>
									<td>{$log->time()}</td>
								</tr>
							{/foreach}
						</table>
                        {$logs->render()}
					</div>

							
			</div>
			
			
			
		</div>
	</main>












{include file='admin/footer.tpl'}