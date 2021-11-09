(: ---===   9.11.21   ===--- :)
(: Названия действий, в которых присутствуют реплики Офелии :)
(: doc('hamlet')//ACT[descendant::SPEECH/SPEAKER='OPHELIA']/TITLE :)

(: Реплики Горацио в ответ на реплики Гамлета :)
(: doc('hamlet')//SPEECH[SPEAKER="HORATIO" and preceding-sibling::*[name()='SPEECH' and position()=1]/SPEAKER='HAMLET']/LINE :)

(: Определить названия действий, в которых участвовали и Горацио, и Гамлет :)
(: doc('hamlet')/PLAY/ACT[descendant::SPEECH/SPEAKER='HORATIO' and descendant::SPEECH/SPEAKER='HAMLET']/TITLE :)

(: Определить реплику Гамлета, содержащая реплику 'To be, or not to be' :)
(: doc('hamlet')//LINE[contains(text(), 'To be, or not to be')] :)

(: Перечислить участников сцены с последней в пьесе репликой Офелии :)
(: distinct-values((doc('hamlet')//SCENE[descendant::SPEAKER='OPHELIA'])[last()]//SPEAKER/text()) :)