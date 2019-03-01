#include <QApplication>
#include <QLineEdit>

int main(int argc, char **argv)
{
	QApplication app(argc, argv);

	QLineEdit *le = new QLineEdit(0);
	//le->setEchoMode(QLineEdit::Password);
	//le->setEchoMode(QLineEdit::Normal);
	//le->setEchoMode(QLineEdit::NoEcho);
	le->setEchoMode(QLineEdit::PasswordEchoOnEdit);
	le->show();

	return app.exec();
}
