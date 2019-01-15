$("#urlform").submit(function(e)
{
	$.post("handle.php", $("#urlform").serialize(), function(data)
	{
		$("#result").text("creating your link..");
  	}).done(function(data)
  	{
  		$("#result").text(data);
  	});
  	
    e.preventDefault();
});