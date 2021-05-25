.class public Landroid/support/v4/content/g;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field private b:I

.field private c:Landroid/support/v4/content/j;

.field private d:Landroid/support/v4/content/i;

.field private e:Landroid/content/Context;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/support/v4/content/g;->f:Z

    iput-boolean v1, p0, Landroid/support/v4/content/g;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/g;->h:Z

    iput-boolean v1, p0, Landroid/support/v4/content/g;->a:Z

    iput-boolean v1, p0, Landroid/support/v4/content/g;->i:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/content/g;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public abandon()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/g;->g:Z

    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cancelLoad()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/content/g;->b()Z

    move-result v0

    return v0
.end method

.method public commitContentChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/g;->i:Z

    return-void
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p1, v0}, Landroid/support/v4/app/ba;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deliverCancellation()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/content/g;->d:Landroid/support/v4/content/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/content/g;->d:Landroid/support/v4/content/i;

    invoke-interface {v0, p0}, Landroid/support/v4/content/i;->onLoadCanceled(Landroid/support/v4/content/g;)V

    :cond_0
    return-void
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/content/g;->c:Landroid/support/v4/content/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/content/g;->c:Landroid/support/v4/content/j;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/content/j;->onLoadComplete(Landroid/support/v4/content/g;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/content/g;->b:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/g;->c:Landroid/support/v4/content/j;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-boolean v0, p0, Landroid/support/v4/content/g;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/content/g;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/content/g;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/g;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/g;->a:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mProcessingChange="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/g;->i:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/content/g;->g:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/content/g;->h:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/g;->g:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/g;->h:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3
    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method protected f()V
    .locals 0

    return-void
.end method

.method public forceLoad()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v4/content/g;->a()V

    return-void
.end method

.method protected g()V
    .locals 0

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/content/g;->e:Landroid/content/Context;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/support/v4/content/g;->b:I

    return v0
.end method

.method public isAbandoned()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/content/g;->g:Z

    return v0
.end method

.method public isReset()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/content/g;->h:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/content/g;->f:Z

    return v0
.end method

.method public onContentChanged()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/content/g;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/content/g;->forceLoad()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/g;->a:Z

    goto :goto_0
.end method

.method public registerListener(ILandroid/support/v4/content/j;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/content/g;->c:Landroid/support/v4/content/j;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Landroid/support/v4/content/g;->c:Landroid/support/v4/content/j;

    iput p1, p0, Landroid/support/v4/content/g;->b:I

    return-void
.end method

.method public registerOnLoadCanceledListener(Landroid/support/v4/content/i;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/content/g;->d:Landroid/support/v4/content/i;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/support/v4/content/g;->d:Landroid/support/v4/content/i;

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v4/content/g;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/g;->h:Z

    iput-boolean v1, p0, Landroid/support/v4/content/g;->f:Z

    iput-boolean v1, p0, Landroid/support/v4/content/g;->g:Z

    iput-boolean v1, p0, Landroid/support/v4/content/g;->a:Z

    iput-boolean v1, p0, Landroid/support/v4/content/g;->i:Z

    return-void
.end method

.method public rollbackContentChanged()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/content/g;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/g;->a:Z

    :cond_0
    return-void
.end method

.method public final startLoading()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/g;->f:Z

    iput-boolean v1, p0, Landroid/support/v4/content/g;->h:Z

    iput-boolean v1, p0, Landroid/support/v4/content/g;->g:Z

    invoke-virtual {p0}, Landroid/support/v4/content/g;->e()V

    return-void
.end method

.method public stopLoading()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/g;->f:Z

    invoke-virtual {p0}, Landroid/support/v4/content/g;->f()V

    return-void
.end method

.method public takeContentChanged()Z
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/content/g;->a:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/content/g;->a:Z

    iget-boolean v1, p0, Landroid/support/v4/content/g;->i:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Landroid/support/v4/content/g;->i:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Landroid/support/v4/app/ba;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/content/g;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterListener(Landroid/support/v4/content/j;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/content/g;->c:Landroid/support/v4/content/j;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/content/g;->c:Landroid/support/v4/content/j;

    if-eq v0, p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/g;->c:Landroid/support/v4/content/j;

    return-void
.end method

.method public unregisterOnLoadCanceledListener(Landroid/support/v4/content/i;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/content/g;->d:Landroid/support/v4/content/i;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/content/g;->d:Landroid/support/v4/content/i;

    if-eq v0, p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/g;->d:Landroid/support/v4/content/i;

    return-void
.end method
