.class final Lcom/vivo/PCTools/r/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndElementListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/r/s;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/r/s;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v0, v1}, Lcom/vivo/PCTools/r/s;->a(Lcom/vivo/PCTools/r/s;Landroid/content/ContentValues;)V

    iget-object v0, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v0}, Lcom/vivo/PCTools/r/s;->b(Lcom/vivo/PCTools/r/s;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "address"

    iget-object v2, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v2}, Lcom/vivo/PCTools/r/s;->c(Lcom/vivo/PCTools/r/s;)Lcom/vivo/PCTools/r/ar;

    move-result-object v2

    iget-object v2, v2, Lcom/vivo/PCTools/r/ar;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v0}, Lcom/vivo/PCTools/r/s;->b(Lcom/vivo/PCTools/r/s;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "date"

    iget-object v2, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v2}, Lcom/vivo/PCTools/r/s;->c(Lcom/vivo/PCTools/r/s;)Lcom/vivo/PCTools/r/ar;

    move-result-object v2

    iget-object v2, v2, Lcom/vivo/PCTools/r/ar;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v0}, Lcom/vivo/PCTools/r/s;->b(Lcom/vivo/PCTools/r/s;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "read"

    iget-object v2, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v2}, Lcom/vivo/PCTools/r/s;->c(Lcom/vivo/PCTools/r/s;)Lcom/vivo/PCTools/r/ar;

    move-result-object v2

    iget-object v2, v2, Lcom/vivo/PCTools/r/ar;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v0}, Lcom/vivo/PCTools/r/s;->b(Lcom/vivo/PCTools/r/s;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "status"

    iget-object v2, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v2}, Lcom/vivo/PCTools/r/s;->c(Lcom/vivo/PCTools/r/s;)Lcom/vivo/PCTools/r/ar;

    move-result-object v2

    iget-object v2, v2, Lcom/vivo/PCTools/r/ar;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v0}, Lcom/vivo/PCTools/r/s;->b(Lcom/vivo/PCTools/r/s;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "type"

    iget-object v2, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v2}, Lcom/vivo/PCTools/r/s;->c(Lcom/vivo/PCTools/r/s;)Lcom/vivo/PCTools/r/ar;

    move-result-object v2

    iget-object v2, v2, Lcom/vivo/PCTools/r/ar;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v0}, Lcom/vivo/PCTools/r/s;->b(Lcom/vivo/PCTools/r/s;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "body"

    iget-object v2, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v2}, Lcom/vivo/PCTools/r/s;->c(Lcom/vivo/PCTools/r/s;)Lcom/vivo/PCTools/r/ar;

    move-result-object v2

    iget-object v2, v2, Lcom/vivo/PCTools/r/ar;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v0}, Lcom/vivo/PCTools/r/s;->b(Lcom/vivo/PCTools/r/s;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "error_code"

    iget-object v2, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v2}, Lcom/vivo/PCTools/r/s;->c(Lcom/vivo/PCTools/r/s;)Lcom/vivo/PCTools/r/ar;

    move-result-object v2

    iget-object v2, v2, Lcom/vivo/PCTools/r/ar;->h:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v0}, Lcom/vivo/PCTools/r/s;->b(Lcom/vivo/PCTools/r/s;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "seen"

    iget-object v2, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v2}, Lcom/vivo/PCTools/r/s;->c(Lcom/vivo/PCTools/r/s;)Lcom/vivo/PCTools/r/ar;

    move-result-object v2

    iget-object v2, v2, Lcom/vivo/PCTools/r/ar;->i:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/vivo/PCTools/util/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v0}, Lcom/vivo/PCTools/r/s;->c(Lcom/vivo/PCTools/r/s;)Lcom/vivo/PCTools/r/ar;

    move-result-object v0

    iget-object v0, v0, Lcom/vivo/PCTools/r/ar;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v0}, Lcom/vivo/PCTools/r/s;->c(Lcom/vivo/PCTools/r/s;)Lcom/vivo/PCTools/r/ar;

    move-result-object v0

    iget-object v0, v0, Lcom/vivo/PCTools/r/ar;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v0}, Lcom/vivo/PCTools/r/s;->b(Lcom/vivo/PCTools/r/s;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "time"

    iget-object v2, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v2}, Lcom/vivo/PCTools/r/s;->c(Lcom/vivo/PCTools/r/s;)Lcom/vivo/PCTools/r/ar;

    move-result-object v2

    iget-object v2, v2, Lcom/vivo/PCTools/r/ar;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "batch_insert"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v1}, Lcom/vivo/PCTools/r/s;->b(Lcom/vivo/PCTools/r/s;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    iget-object v1, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    iget-object v1, v1, Lcom/vivo/PCTools/r/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/vivo/PCTools/r/am;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v0}, Lcom/vivo/PCTools/r/s;->b(Lcom/vivo/PCTools/r/s;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    return-void
.end method
