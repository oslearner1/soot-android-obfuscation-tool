.class public final Lcom/vivo/PCTools/e/b;
.super Lcom/vivo/PCTools/Pcserver/a;


# static fields
.field public static d:Z


# instance fields
.field private e:Lcom/vivo/PCTools/BookMark/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/PCTools/e/b;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/PCTools/Pcserver/a;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final HandleMessage()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/PCTools/e/b;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/vivo/PCTools/e/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/PCTools/e/c;->AnswerRingingCall(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/vivo/PCTools/e/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/PCTools/e/c;->EndCall(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/vivo/PCTools/BookMark/p;

    iget-object v1, p0, Lcom/vivo/PCTools/e/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/BookMark/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/PCTools/e/b;->e:Lcom/vivo/PCTools/BookMark/p;

    iget-object v0, p0, Lcom/vivo/PCTools/e/b;->e:Lcom/vivo/PCTools/BookMark/p;

    iget-object v1, p0, Lcom/vivo/PCTools/e/b;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/BookMark/p;->ParserAndInsert(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/e/b;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x12 -> :sswitch_0
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method public final MakeProtocal(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    .locals 3

    const/4 v2, 0x0

    const-string v0, "TelePhoneHandler"

    const-string v1, "PhoneIncomingCall"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v0}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    return-object v0
.end method

.method public final onCreateXmlFile(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 0

    return-void
.end method
