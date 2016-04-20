function tag(text1) 
{

    if ((document.selection)) 
    { 
        document.getElementById('tags').focus(); 

        document.post.document.selection.createRange().text = 
        text1+document.post.document.selection.createRange().text ; 

    } else if(document.getElementById('tags').selectionStart != undefined) { 
        var element = document.getElementById('tags'); 
        var str = element.value; 
        var start = element.selectionStart; 
        var length = element.selectionEnd - element.selectionStart; 
        element.value = str.substr(0, start) + text1 + str.substr(start, length); 

    } else document.getElementById('tags').value += text1; 
}

 
  function showLayer() 
  {
 document.getElementById("tagsdiv").style.visibility = "visible";
 }
 
 function showUpload() 
  {
 document.getElementById("upload_div").style.visibility = "visible";
 }