.class final Landroid/support/v4/app/bg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/content/i;
.implements Landroid/support/v4/content/j;


# instance fields
.field final a:I

.field b:Landroid/support/v4/media/routing/d;

.field c:Landroid/support/v4/content/g;

.field d:Z

.field e:Z

.field f:Ljava/lang/Object;

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Landroid/support/v4/app/bg;

.field private m:Landroid/os/Bundle;

.field private n:Z

.field private synthetic o:Landroid/support/v4/app/bf;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/bf;ILandroid/os/Bundle;Landroid/support/v4/media/routing/d;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/support/v4/app/bg;->a:I

    iput-object p3, p0, Landroid/support/v4/app/bg;->m:Landroid/os/Bundle;

    iput-object p4, p0, Landroid/support/v4/app/bg;->b:Landroid/support/v4/media/routing/d;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Landroid/support/v4/app/bg;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/bg;->i:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Landroid/support/v4/app/bg;->g:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/bg;->g:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Landroid/support/v4/app/bg;->g:Z

    sget-boolean v0, Landroid/support/v4/app/bf;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Starting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/bg;->b:Landroid/support/v4/media/routing/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/bg;->b:Landroid/support/v4/media/routing/d;

    iget v1, p0, Landroid/support/v4/app/bg;->a:I

    iget-object v2, p0, Landroid/support/v4/app/bg;->m:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/support/v4/media/routing/d;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/g;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/app/bg;->k:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    iget v1, p0, Landroid/support/v4/app/bg;->a:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/content/g;->registerListener(ILandroid/support/v4/content/j;)V

    iget-object v0, p0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/g;->registerOnLoadCanceledListener(Landroid/support/v4/content/i;)V

    iput-boolean v3, p0, Landroid/support/v4/app/bg;->k:Z

    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    invoke-virtual {v0}, Landroid/support/v4/content/g;->startLoading()V

    goto/16 :goto_0
.end method

.method final a(Landroid/support/v4/content/g;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/bg;->b:Landroid/support/v4/media/routing/d;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    invoke-static {v1}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bf;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    invoke-static {v0}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bf;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->g:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    invoke-static {v1}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bf;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    const-string v2, "onLoadFinished"

    iput-object v2, v1, Landroid/support/v4/app/af;->g:Ljava/lang/String;

    move-object v1, v0

    :goto_0
    :try_start_0
    sget-boolean v0, Landroid/support/v4/app/bf;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  onLoadFinished in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, p2}, Landroid/support/v4/content/g;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/bg;->b:Landroid/support/v4/media/routing/d;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/routing/d;->onLoadFinished(Landroid/support/v4/content/g;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    invoke-static {v0}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bf;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    invoke-static {v0}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bf;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    iput-object v1, v0, Landroid/support/v4/app/af;->g:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/bg;->e:Z

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    invoke-static {v2}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bf;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    invoke-static {v2}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bf;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v2

    iget-object v2, v2, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    iput-object v1, v2, Landroid/support/v4/app/af;->g:Ljava/lang/String;

    :cond_3
    throw v0

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method final b()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Landroid/support/v4/app/bf;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Stopping: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v3, p0, Landroid/support/v4/app/bg;->g:Z

    iget-boolean v0, p0, Landroid/support/v4/app/bg;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/bg;->k:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Landroid/support/v4/app/bg;->k:Z

    iget-object v0, p0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/g;->unregisterListener(Landroid/support/v4/content/j;)V

    iget-object v0, p0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/g;->unregisterOnLoadCanceledListener(Landroid/support/v4/content/i;)V

    iget-object v0, p0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    invoke-virtual {v0}, Landroid/support/v4/content/g;->stopLoading()V

    :cond_1
    return-void
.end method

.method final c()V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    sget-boolean v0, Landroid/support/v4/app/bf;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  Destroying: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/bg;->n:Z

    iget-boolean v0, p0, Landroid/support/v4/app/bg;->e:Z

    iput-boolean v4, p0, Landroid/support/v4/app/bg;->e:Z

    iget-object v1, p0, Landroid/support/v4/app/bg;->b:Landroid/support/v4/media/routing/d;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v4/app/bg;->d:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/support/v4/app/bf;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  Reseting: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    invoke-static {v0}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bf;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    invoke-static {v0}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bf;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->g:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    invoke-static {v1}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bf;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    const-string v3, "onLoaderReset"

    iput-object v3, v1, Landroid/support/v4/app/af;->g:Ljava/lang/String;

    move-object v1, v0

    :goto_1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/bg;->b:Landroid/support/v4/media/routing/d;

    iget-object v3, p0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    invoke-interface {v0, v3}, Landroid/support/v4/media/routing/d;->onLoaderReset(Landroid/support/v4/content/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    invoke-static {v0}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bf;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    invoke-static {v0}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bf;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    iput-object v1, v0, Landroid/support/v4/app/af;->g:Ljava/lang/String;

    :cond_2
    iput-object v2, p0, Landroid/support/v4/app/bg;->b:Landroid/support/v4/media/routing/d;

    iput-object v2, p0, Landroid/support/v4/app/bg;->f:Ljava/lang/Object;

    iput-boolean v4, p0, Landroid/support/v4/app/bg;->d:Z

    iget-object v0, p0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v4/app/bg;->k:Z

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Landroid/support/v4/app/bg;->k:Z

    iget-object v0, p0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/g;->unregisterListener(Landroid/support/v4/content/j;)V

    iget-object v0, p0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/g;->unregisterOnLoadCanceledListener(Landroid/support/v4/content/i;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    invoke-virtual {v0}, Landroid/support/v4/content/g;->reset()V

    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/bg;->l:Landroid/support/v4/app/bg;

    if-eqz v0, :cond_6

    iget-object p0, p0, Landroid/support/v4/app/bg;->l:Landroid/support/v4/app/bg;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    invoke-static {v2}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bf;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    invoke-static {v2}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bf;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v2

    iget-object v2, v2, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    iput-object v1, v2, Landroid/support/v4/app/af;->g:Ljava/lang/String;

    :cond_5
    throw v0

    :cond_6
    return-void

    :cond_7
    move-object v1, v2

    goto :goto_1
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    :goto_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/bg;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/bg;->m:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/bg;->b:Landroid/support/v4/media/routing/d;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/content/g;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/bg;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/bg;->e:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/bg;->d:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/bg;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/bg;->f:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/bg;->g:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/bg;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/bg;->n:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/bg;->h:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/bg;->i:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/bg;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/support/v4/app/bg;->l:Landroid/support/v4/app/bg;

    if-eqz v0, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/bg;->l:Landroid/support/v4/app/bg;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/support/v4/app/bg;->l:Landroid/support/v4/app/bg;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public final onLoadCanceled(Landroid/support/v4/content/g;)V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Landroid/support/v4/app/bf;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoadCanceled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/bg;->n:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/support/v4/app/bf;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "LoaderManager"

    const-string v1, "  Ignoring load canceled -- destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    iget-object v0, v0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    iget v1, p0, Landroid/support/v4/app/bg;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/util/k;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_3

    sget-boolean v0, Landroid/support/v4/app/bf;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "LoaderManager"

    const-string v1, "  Ignoring load canceled -- not active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/bg;->l:Landroid/support/v4/app/bg;

    if-eqz v0, :cond_1

    sget-boolean v1, Landroid/support/v4/app/bf;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Switching to pending loader: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-object v4, p0, Landroid/support/v4/app/bg;->l:Landroid/support/v4/app/bg;

    iget-object v1, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    iget-object v1, v1, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    iget v2, p0, Landroid/support/v4/app/bg;->a:I

    invoke-virtual {v1, v2, v4}, Landroid/support/v4/util/k;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/support/v4/app/bg;->c()V

    iget-object v1, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bg;)V

    goto :goto_0
.end method

.method public final onLoadComplete(Landroid/support/v4/content/g;Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Landroid/support/v4/app/bf;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoadComplete: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/bg;->n:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/support/v4/app/bf;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "LoaderManager"

    const-string v1, "  Ignoring load complete -- destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    iget-object v0, v0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    iget v1, p0, Landroid/support/v4/app/bg;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/util/k;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_3

    sget-boolean v0, Landroid/support/v4/app/bf;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "LoaderManager"

    const-string v1, "  Ignoring load complete -- not active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/bg;->l:Landroid/support/v4/app/bg;

    if-eqz v0, :cond_5

    sget-boolean v1, Landroid/support/v4/app/bf;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Switching to pending loader: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-object v4, p0, Landroid/support/v4/app/bg;->l:Landroid/support/v4/app/bg;

    iget-object v1, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    iget-object v1, v1, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    iget v2, p0, Landroid/support/v4/app/bg;->a:I

    invoke-virtual {v1, v2, v4}, Landroid/support/v4/util/k;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/support/v4/app/bg;->c()V

    iget-object v1, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bg;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/bg;->f:Ljava/lang/Object;

    if-ne v0, p2, :cond_6

    iget-boolean v0, p0, Landroid/support/v4/app/bg;->d:Z

    if-nez v0, :cond_7

    :cond_6
    iput-object p2, p0, Landroid/support/v4/app/bg;->f:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/bg;->d:Z

    iget-boolean v0, p0, Landroid/support/v4/app/bg;->g:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/bg;->a(Landroid/support/v4/content/g;Ljava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    iget-object v0, v0, Landroid/support/v4/app/bf;->c:Landroid/support/v4/util/k;

    iget v1, p0, Landroid/support/v4/app/bg;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/util/k;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bg;

    if-eqz v0, :cond_8

    if-eq v0, p0, :cond_8

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/app/bg;->e:Z

    invoke-virtual {v0}, Landroid/support/v4/app/bg;->c()V

    iget-object v0, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    iget-object v0, v0, Landroid/support/v4/app/bf;->c:Landroid/support/v4/util/k;

    iget v1, p0, Landroid/support/v4/app/bg;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/util/k;->remove(I)V

    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    invoke-static {v0}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bf;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    invoke-virtual {v0}, Landroid/support/v4/app/bf;->hasRunningLoaders()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/bg;->o:Landroid/support/v4/app/bf;

    invoke-static {v0}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bf;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0}, Landroid/support/v4/app/af;->a()V

    goto/16 :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/bg;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    invoke-static {v1, v0}, Landroid/support/v4/app/ba;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
