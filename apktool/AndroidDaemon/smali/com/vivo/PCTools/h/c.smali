.class final Lcom/vivo/PCTools/h/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/vcalendar/VCalStatusChangeOperator;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/h/a;


# direct methods
.method private constructor <init>(Lcom/vivo/PCTools/h/a;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/h/c;->a:Lcom/vivo/PCTools/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/PCTools/h/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/PCTools/h/c;-><init>(Lcom/vivo/PCTools/h/a;)V

    return-void
.end method


# virtual methods
.method public final vCalOperationCanceled(II)V
    .locals 0

    return-void
.end method

.method public final vCalOperationExceptionOccured(III)V
    .locals 0

    return-void
.end method

.method public final vCalOperationFinished(IILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/PCTools/h/c;->a:Lcom/vivo/PCTools/h/a;

    invoke-static {v0}, Lcom/vivo/PCTools/h/a;->a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/c;->a:Lcom/vivo/PCTools/h/a;

    invoke-static {v0}, Lcom/vivo/PCTools/h/a;->a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    sget-byte v1, Lcom/vivo/PCTools/h/a;->f:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/c;->a:Lcom/vivo/PCTools/h/a;

    invoke-static {v0}, Lcom/vivo/PCTools/h/a;->a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v0, "calendar"

    invoke-static {v0, p2, p1}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/c;->a:Lcom/vivo/PCTools/h/a;

    invoke-static {v1}, Lcom/vivo/PCTools/h/a;->a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/c;->a:Lcom/vivo/PCTools/h/a;

    iget-object v1, p0, Lcom/vivo/PCTools/h/c;->a:Lcom/vivo/PCTools/h/a;

    invoke-static {v1}, Lcom/vivo/PCTools/h/a;->a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void
.end method

.method public final vCalOperationStarted(I)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/h/c;->a:Lcom/vivo/PCTools/h/a;

    invoke-static {v0}, Lcom/vivo/PCTools/h/a;->a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/c;->a:Lcom/vivo/PCTools/h/a;

    invoke-static {v0}, Lcom/vivo/PCTools/h/a;->a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    sget-byte v1, Lcom/vivo/PCTools/h/a;->f:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/c;->a:Lcom/vivo/PCTools/h/a;

    invoke-static {v0}, Lcom/vivo/PCTools/h/a;->a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v0, "calendar"

    invoke-static {v0, p1, v2}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/c;->a:Lcom/vivo/PCTools/h/a;

    invoke-static {v1}, Lcom/vivo/PCTools/h/a;->a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/c;->a:Lcom/vivo/PCTools/h/a;

    iget-object v1, p0, Lcom/vivo/PCTools/h/c;->a:Lcom/vivo/PCTools/h/a;

    invoke-static {v1}, Lcom/vivo/PCTools/h/a;->a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    :cond_0
    return-void
.end method

.method public final vCalProcessStatusUpdate(II)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/PCTools/h/c;->a:Lcom/vivo/PCTools/h/a;

    invoke-static {v0}, Lcom/vivo/PCTools/h/a;->a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/c;->a:Lcom/vivo/PCTools/h/a;

    invoke-static {v0}, Lcom/vivo/PCTools/h/a;->a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    sget-byte v1, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/c;->a:Lcom/vivo/PCTools/h/a;

    invoke-static {v0}, Lcom/vivo/PCTools/h/a;->a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/c;->a:Lcom/vivo/PCTools/h/a;

    iget-object v1, p0, Lcom/vivo/PCTools/h/c;->a:Lcom/vivo/PCTools/h/a;

    invoke-static {v1}, Lcom/vivo/PCTools/h/a;->a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v1

    const-string v2, "calendar"

    invoke-static {v2, p2, p1}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    return-void
.end method
