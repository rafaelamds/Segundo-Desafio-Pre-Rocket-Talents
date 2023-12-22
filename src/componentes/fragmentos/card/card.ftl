<div class="fragment_1001">
    <div class="row">
        [#list 1..configuration.numbersCards as index]
            <div class="col-lg-4 col-md-6 mb-4">
                <div id="Card${index}" class="card" style="background-color: #white;  border: 1px solid #73b4c3; border-radius: 20px;" >
                    <div class="card-body" style="text-align: center;">
                        <lfr-editable id="image${index}" type="image">
                            <img class="imagem img-fluid" src="image" alt="Card image cap" style="border-radius: 20px;">
                        </lfr-editable>
                        <h1 class="card-title">
                            <lfr-editable id="Title${index}" type="text">Titulo</lfr-editable>
                        </h1>
                        <p class="card-text">
                            <lfr-editable id="Paragraph${index}" type="text">Paragrafo</lfr-editable>
                        </p>
                        <lfr-editable id="FirstLink${index}" type="link">
                            <a href="#" class="btn btn-${configuration.buttonColor.cssClass} text-${configuration.buttonTextColor.cssClass}">Insira um texto</a>
                        </lfr-editable>
                    </div>
                </div>
            </div>
        [/#list]
    </div>
</div>