# Code Examples

## Getting Super Powers

Becoming a super hero is a fairly straight forward process:

```
$ give me super-powers
```

{% hint style="info" %}
 Super-powers are granted randomly so please submit an issue if you're not happy with yours.
{% endhint %}

Once you're strong enough, save the world:

```java
String str = "hello";
for (int i=0; i < str.length(); i++){
    System.out.print(str.charAt(i));
}
//another less optimal solution is to convert the str into an char array
//using str.toCharArray();
//see loop an Array section in Java below

```

```bash
//method 1: use for loop
for($i=0; $i < count($array); $i++){
    echo $array[$i];
}

//method 2: convert a string to an array first, then we can loop the array
//use str_split() function to split a string by character
$str = "hello";
$array = str_split($str);  //split by character into an array
foreach($array as $value){
    echo $value;
```

```csharp
$string = "The quick brown fox jumped over the lazy dog's back"
$data = [Text.Encoding]::UTF8.GetBytes($string)
$hash = [Security.Cryptography.MD5]::Create().ComputeHash($data)
([BitConverter]::ToString($hash) -replace '-').ToLower()
```

{% code title="hello.sh" %}
```bash
# Ain't no code for that yet, sorry
echo 'You got to trust me on this, I saved the world'
```
{% endcode %}

