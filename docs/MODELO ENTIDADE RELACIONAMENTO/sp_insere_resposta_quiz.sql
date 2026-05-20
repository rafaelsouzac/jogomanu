CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insere_reposta_quiz`(
    IN p_idrepostas varchar(1),
    IN p_idacessousuario int
)
BEGIN
	INSERT INTO `jogomanu`.`gabaritosalunos`
(
`idresposta`,
`acessousuario_idacessousuario`,
`horaresposta`)
VALUES
(
p_idresposta,
p_idacessousuario,
current_timestamp());

END