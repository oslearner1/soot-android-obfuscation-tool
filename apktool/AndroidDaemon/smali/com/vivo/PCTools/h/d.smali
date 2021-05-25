.class final Lcom/vivo/PCTools/h/d;
.super Lcom/vivo/vcard/x;


# instance fields
.field private a:I

.field private b:I

.field private synthetic c:Lcom/vivo/PCTools/h/a;


# direct methods
.method public constructor <init>(Lcom/vivo/PCTools/h/a;Landroid/content/ContentResolver;I)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/vivo/PCTools/h/d;->c:Lcom/vivo/PCTools/h/a;

    invoke-direct {p0, p2}, Lcom/vivo/vcard/x;-><init>(Landroid/content/ContentResolver;)V

    iput v0, p0, Lcom/vivo/PCTools/h/d;->a:I

    iput v0, p0, Lcom/vivo/PCTools/h/d;->b:I

    iput p3, p0, Lcom/vivo/PCTools/h/d;->a:I

    return-void
.end method


# virtual methods
.method public final onEnd()V
    .locals 3

    invoke-super {p0}, Lcom/vivo/vcard/x;->onEnd()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/d;->c:Lcom/vivo/PCTools/h/a;

    invoke-static {v0}, Lcom/vivo/PCTools/h/a;->a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/d;->c:Lcom/vivo/PCTools/h/a;

    invoke-static {v0}, Lcom/vivo/PCTools/h/a;->a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    sget-byte v1, Lcom/vivo/PCTools/h/a;->e:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/d;->c:Lcom/vivo/PCTools/h/a;

    invoke-static {v0}, Lcom/vivo/PCTools/h/a;->a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v0, "contact"

    iget v1, p0, Lcom/vivo/PCTools/h/d;->a:I

    iget v2, p0, Lcom/vivo/PCTools/h/d;->b:I

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/h/d;->c:Lcom/vivo/PCTools/h/a;

    invoke-static {v1}, Lcom/vivo/PCTools/h/a;->a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/d;->c:Lcom/vivo/PCTools/h/a;

    iget-object v1, p0, Lcom/vivo/PCTools/h/d;->c:Lcom/vivo/PCTools/h/a;

    invoke-static {v1}, Lcom/vivo/PCTools/h/a;->a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void
.end method

.method public final onEntryCreated(Lcom/vivo/vcard/VCardEntry;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/vivo/vcard/x;->onEntryCreated(Lcom/vivo/vcard/VCardEntry;)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/d;->c:Lcom/vivo/PCTools/h/a;

    invoke-static {v0}, Lcom/vivo/PCTools/h/a;->a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->reset()V

    iget-object v0, p0, Lcom/vivo/PCTools/h/d;->c:Lcom/vivo/PCTools/h/a;

    invoke-static {v0}, Lcom/vivo/PCTools/h/a;->a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    sget-byte v1, Lcom/vivo/PCTools/h/a;->d:B

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/d;->c:Lcom/vivo/PCTools/h/a;

    invoke-static {v0}, Lcom/vivo/PCTools/h/a;->a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/d;->c:Lcom/vivo/PCTools/h/a;

    iget-object v1, p0, Lcom/vivo/PCTools/h/d;->c:Lcom/vivo/PCTools/h/a;

    invoke-static {v1}, Lcom/vivo/PCTools/h/a;->a(Lcom/vivo/PCTools/h/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v1

    const-string v2, "contact"

    iget v3, p0, Lcom/vivo/PCTools/h/d;->a:I

    iget v4, p0, Lcom/vivo/PCTools/h/d;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/vivo/PCTools/h/d;->b:I

    invoke-static {v2, v3, v4}, Lcom/vivo/PCTools/h/a;->getprocessjson(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vivo/PCTools/h/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V

    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Lcom/vivo/vcard/x;->onStart()V

    return-void
.end method
