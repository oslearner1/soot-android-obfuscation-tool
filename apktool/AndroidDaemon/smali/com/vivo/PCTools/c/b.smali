.class public final Lcom/vivo/PCTools/c/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/graphics/Bitmap;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Ljava/util/ArrayList;

.field private q:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/vivo/PCTools/c/b;->l:Z

    iput-boolean v0, p0, Lcom/vivo/PCTools/c/b;->m:Z

    iput-boolean v0, p0, Lcom/vivo/PCTools/c/b;->n:Z

    iput-object v1, p0, Lcom/vivo/PCTools/c/b;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/vivo/PCTools/c/b;->p:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/vivo/PCTools/c/b;->q:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/c/b;->p:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getAuthor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/c/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/c/b;->k:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/c/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getDownloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/c/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getFlagDownload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/PCTools/c/b;->m:Z

    return v0
.end method

.method public final getHasUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/PCTools/c/b;->n:Z

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/c/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/c/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/c/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/c/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreviewBitmap()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/c/b;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPreviewUrlList()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/c/b;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/c/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getStyle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/c/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final getThumbnail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/c/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/PCTools/c/b;->l:Z

    return v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/c/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final setAuthor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/c/b;->e:Ljava/lang/String;

    return-void
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/c/b;->k:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/c/b;->h:Ljava/lang/String;

    return-void
.end method

.method public final setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/c/b;->i:Ljava/lang/String;

    return-void
.end method

.method public final setFlagDownload(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/PCTools/c/b;->m:Z

    return-void
.end method

.method public final setHasUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/PCTools/c/b;->n:Z

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/c/b;->a:Ljava/lang/String;

    return-void
.end method

.method public final setModel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/c/b;->d:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/c/b;->b:Ljava/lang/String;

    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/c/b;->o:Ljava/lang/String;

    return-void
.end method

.method public final setPreviewBitmap(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/c/b;->q:Ljava/util/ArrayList;

    return-void
.end method

.method public final setPreviewUrl(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vivo/PCTools/c/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final setSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/c/b;->g:Ljava/lang/String;

    return-void
.end method

.method public final setStyle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/c/b;->j:Ljava/lang/String;

    return-void
.end method

.method public final setThumbnail(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "ht"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/vivo/PCTools/c/b;->c:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vivo/PCTools/c/b;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/c/b;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final setUsage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/PCTools/c/b;->l:Z

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/c/b;->f:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/PCTools/c/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/c/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thumbnail = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/c/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
