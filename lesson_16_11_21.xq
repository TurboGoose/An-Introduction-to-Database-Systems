(: Вывести список персонажей, участвовавших во втором действии в формате 
<ACT2SP>
  <A2SP>
    Имя персонажа
  </A2SP>
    <A2SP>
    Имя персонажа
  </A2SP>
  ...	
</ACT2SP>
:)

(: element{'ACT2SP'}{
  for $p in distinct-values(doc('hamlet')/PLAY/ACT[2]//SPEAKER)
  order by string-length($p) descending
  return element{'A2SP'}{$p}
} :)


(: Сформировать рейтинг персонажей по количеству реплик за всю пьесу в формате
<rating>
  <speaker>
    имя персонажа
    <numspeech>
      количество реплик
    </numspeech>
  </speaker>
  ...
</rating>
:)

let $rating := element{'rating'}{
  for $speaker in distinct-values(doc('hamlet')/PLAY/ACT//SPEAKER)
  let $numspeech := count(doc('hamlet')//SPEECH[SPEAKER=$speaker]/LINE)
  order by $numspeech descending
  return element{'speaker'}{$speaker, element{'numspeech'}{$numspeech}}
}


(: Сделать из этих данных html страничку с таблицей :)

(: let $list := for $s in $rating/speaker
return element{'tr'}{
  element{'td'}{$s/text()},
  element{'td'}{$s/numspeech/text()}
}
return element{'table'}{
  element{'tr'}{
    element{'td'}{'persona'},
    element{'td'}{'count'}
   },
   $list
} :)


(: Выделить реплики персонажа, который имеет наибольший по количеству строк спич :)

(: let $sp_lens := for $sp in doc('hamlet')//SPEECH
return count($sp/LINE)
let $max_sp_len := max($sp_lens)
return doc('hamlet')//SPEECH[count(LINE)=$max_sp_len]/LINE :)


(: Найти второго персонажа по максимальному количеству строк в спиче :)

let $pers_lens :=
  for $pers in distinct-values(doc('hamlet')//SPEAKER)
    let $max_len := max(
      for $sp in doc('hamlet')//SPEECH[SPEAKER=$pers]
      return count($sp/LINE)
    )
    order by $max_len descending
    return ($pers, $max_len)
return ($pers_lens[3], $pers_lens[4])