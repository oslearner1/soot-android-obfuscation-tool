.class final Lcom/vivo/PCTools/i/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndElementListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/i/h;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/i/h;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/i/p;->a:Lcom/vivo/PCTools/i/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end()V
    .locals 4

    iget-object v0, p0, Lcom/vivo/PCTools/i/p;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->i(Lcom/vivo/PCTools/i/h;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/i/p;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->c(Lcom/vivo/PCTools/i/h;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.contacts"

    iget-object v2, p0, Lcom/vivo/PCTools/i/p;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v2}, Lcom/vivo/PCTools/i/h;->i(Lcom/vivo/PCTools/i/h;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/vivo/PCTools/i/p;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->i(Lcom/vivo/PCTools/i/h;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ContactsXmlParseHandler"

    const-string v2, "Problem persisting user edits"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ContactsXmlParseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Version consistency failed, re-parenting: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
