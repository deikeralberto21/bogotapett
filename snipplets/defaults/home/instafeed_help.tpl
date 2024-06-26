{# Instagram feed that work as examples #}

<section class="section-instafeed-home" data-store="home-instagram-feed">
	<div class="container">
		<div class="row">
			<div class="col-12 text-center">
				<div class="instafeed-title">
					<svg class="icon-inline icon-3x svg-icon-text"><use xlink:href="#instagram"/></svg>
					<h3 class="h1 instafeed-user">{{ 'Instagram' | translate }}</h3>
				</div>
			</div>
		</div>
	</div>
	<div id="instafeed" class="row no-gutters position-relative">
		{% include 'snipplets/defaults/help_instagram.tpl' with {'help_item_1': true} %}
		{% include 'snipplets/defaults/help_instagram.tpl' with {'help_item_2': true} %}
		{% include 'snipplets/defaults/help_instagram.tpl' with {'help_item_1': true} %}
		{% include 'snipplets/defaults/help_instagram.tpl' with {'help_item_2': true} %}
		{% include 'snipplets/defaults/help_instagram.tpl' with {'help_item_1': true} %}
		{% include 'snipplets/defaults/help_instagram.tpl' with {'help_item_2': true} %}
		<div class="placeholder-overlay transition-soft">
            <div class="placeholder-info">
            	<svg class="icon-inline icon-3x"><use xlink:href="#edit"/></svg>
                <div class="placeholder-description font-small-xs">
                    {{ "Podés mostrar tus últimas novedades desde" | translate }} <strong>"{{ "Publicaciones de Instagram" | translate }}"</strong>
                </div>
                {% if not params.preview %}
                    <a href="{{ admin_link }}#instatheme=pagina-de-inicio" class="btn-secondary btn btn-small placeholder-button">{{ "Editar" | translate }}</a>
                {% endif %}
            </div>
        </div>
	</div>
</section>