.class final Lcom/vivo/vcard/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/vcard/VCardEntry$EntryElementIterator;


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:Z

.field private synthetic c:Lcom/vivo/vcard/VCardEntry;


# direct methods
.method private constructor <init>(Lcom/vivo/vcard/VCardEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcard/v;->c:Lcom/vivo/vcard/VCardEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/vcard/VCardEntry;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/vcard/v;-><init>(Lcom/vivo/vcard/VCardEntry;)V

    return-void
.end method


# virtual methods
.method public final onElement(Lcom/vivo/vcard/VCardEntry$EntryElement;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/vivo/vcard/v;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/v;->a:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/vcard/v;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/vivo/vcard/v;->a:Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0
.end method

.method public final onElementGroupEnded()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/vcard/v;->a:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final onElementGroupStarted(Lcom/vivo/vcard/VCardEntry$EntryLabel;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/vcard/v;->a:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vivo/vcard/VCardEntry$EntryLabel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/vcard/v;->b:Z

    return-void
.end method

.method public final onIterationEnded()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/vcard/v;->a:Ljava/lang/StringBuilder;

    const-string v1, "]]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final onIterationStarted()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcard/v;->a:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/vcard/v;->a:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[[hash: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/vcard/v;->c:Lcom/vivo/vcard/VCardEntry;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/v;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
