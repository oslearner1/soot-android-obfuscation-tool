.class final Landroid/support/v4/app/bf;
.super Landroid/support/v4/app/be;


# static fields
.field static a:Z


# instance fields
.field final b:Landroid/support/v4/util/k;

.field final c:Landroid/support/v4/util/k;

.field final d:Ljava/lang/String;

.field e:Z

.field f:Z

.field private g:Z

.field private h:Landroid/support/v4/app/FragmentHostCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/bf;->a:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/support/v4/app/FragmentHostCallback;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/be;-><init>()V

    new-instance v0, Landroid/support/v4/util/k;

    invoke-direct {v0}, Landroid/support/v4/util/k;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    new-instance v0, Landroid/support/v4/util/k;

    invoke-direct {v0}, Landroid/support/v4/util/k;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/bf;->c:Landroid/support/v4/util/k;

    iput-object p1, p0, Landroid/support/v4/app/bf;->d:Ljava/lang/String;

    iput-object p2, p0, Landroid/support/v4/app/bf;->h:Landroid/support/v4/app/FragmentHostCallback;

    iput-boolean p3, p0, Landroid/support/v4/app/bf;->e:Z

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/bf;)Landroid/support/v4/app/FragmentHostCallback;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/bf;->h:Landroid/support/v4/app/FragmentHostCallback;

    return-object v0
.end method

.method private a(ILandroid/os/Bundle;Landroid/support/v4/media/routing/d;)Landroid/support/v4/app/bg;
    .locals 2

    new-instance v0, Landroid/support/v4/app/bg;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v4/app/bg;-><init>(Landroid/support/v4/app/bf;ILandroid/os/Bundle;Landroid/support/v4/media/routing/d;)V

    invoke-interface {p3, p1, p2}, Landroid/support/v4/media/routing/d;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/g;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    return-object v0
.end method

.method private b(ILandroid/os/Bundle;Landroid/support/v4/media/routing/d;)Landroid/support/v4/app/bg;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/support/v4/app/bf;->g:Z

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/bf;->a(ILandroid/os/Bundle;Landroid/support/v4/media/routing/d;)Landroid/support/v4/app/bg;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Landroid/support/v4/app/bf;->g:Z

    return-object v0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroid/support/v4/app/bf;->g:Z

    throw v0
.end method


# virtual methods
.method final a()V
    .locals 4

    sget-boolean v0, Landroid/support/v4/app/bf;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/bf;->e:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doStart when already started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/bf;->e:Z

    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0}, Landroid/support/v4/util/k;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/k;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bg;

    invoke-virtual {v0}, Landroid/support/v4/app/bg;->a()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method final a(Landroid/support/v4/app/FragmentHostCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/bf;->h:Landroid/support/v4/app/FragmentHostCallback;

    return-void
.end method

.method final a(Landroid/support/v4/app/bg;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    iget v1, p1, Landroid/support/v4/app/bg;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/k;->put(ILjava/lang/Object;)V

    iget-boolean v0, p0, Landroid/support/v4/app/bf;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/bg;->a()V

    :cond_0
    return-void
.end method

.method final b()V
    .locals 4

    sget-boolean v0, Landroid/support/v4/app/bf;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stopping in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/bf;->e:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doStop when not started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0}, Landroid/support/v4/util/k;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/k;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bg;

    invoke-virtual {v0}, Landroid/support/v4/app/bg;->b()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/bf;->e:Z

    goto :goto_0
.end method

.method final c()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-boolean v0, Landroid/support/v4/app/bf;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retaining in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/bf;->e:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doRetain when not started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void

    :cond_2
    iput-boolean v6, p0, Landroid/support/v4/app/bf;->f:Z

    iput-boolean v5, p0, Landroid/support/v4/app/bf;->e:Z

    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0}, Landroid/support/v4/util/k;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/k;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bg;

    sget-boolean v2, Landroid/support/v4/app/bf;->a:Z

    if-eqz v2, :cond_3

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Retaining: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v6, v0, Landroid/support/v4/app/bg;->h:Z

    iget-boolean v2, v0, Landroid/support/v4/app/bg;->g:Z

    iput-boolean v2, v0, Landroid/support/v4/app/bg;->i:Z

    iput-boolean v5, v0, Landroid/support/v4/app/bg;->g:Z

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v4/app/bg;->b:Landroid/support/v4/media/routing/d;

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method final d()V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p0, Landroid/support/v4/app/bf;->f:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Landroid/support/v4/app/bf;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Finished Retaining in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v5, p0, Landroid/support/v4/app/bf;->f:Z

    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0}, Landroid/support/v4/util/k;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/k;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bg;

    iget-boolean v2, v0, Landroid/support/v4/app/bg;->h:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Landroid/support/v4/app/bf;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Finished Retaining: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v5, v0, Landroid/support/v4/app/bg;->h:Z

    iget-boolean v2, v0, Landroid/support/v4/app/bg;->g:Z

    iget-boolean v3, v0, Landroid/support/v4/app/bg;->i:Z

    if-eq v2, v3, :cond_2

    iget-boolean v2, v0, Landroid/support/v4/app/bg;->g:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/bg;->b()V

    :cond_2
    iget-boolean v2, v0, Landroid/support/v4/app/bg;->g:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Landroid/support/v4/app/bg;->d:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Landroid/support/v4/app/bg;->j:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    iget-object v3, v0, Landroid/support/v4/app/bg;->f:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/bg;->a(Landroid/support/v4/content/g;Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final destroyLoader(I)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v4/app/bf;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v0, Landroid/support/v4/app/bf;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "destroyLoader in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/k;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/k;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bg;

    iget-object v2, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/k;->removeAt(I)V

    invoke-virtual {v0}, Landroid/support/v4/app/bg;->c()V

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/bf;->c:Landroid/support/v4/util/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/k;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/bf;->c:Landroid/support/v4/util/k;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/k;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bg;

    iget-object v2, p0, Landroid/support/v4/app/bf;->c:Landroid/support/v4/util/k;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/k;->removeAt(I)V

    invoke-virtual {v0}, Landroid/support/v4/app/bg;->c()V

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/bf;->h:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/app/bf;->hasRunningLoaders()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/bf;->h:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0}, Landroid/support/v4/app/af;->a()V

    :cond_4
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0}, Landroid/support/v4/util/k;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0}, Landroid/support/v4/util/k;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/k;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bg;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v4, v1}, Landroid/support/v4/util/k;->keyAt(I)I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/bg;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/bg;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/bf;->c:Landroid/support/v4/util/k;

    invoke-virtual {v0}, Landroid/support/v4/util/k;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Inactive Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/bf;->c:Landroid/support/v4/util/k;

    invoke-virtual {v0}, Landroid/support/v4/util/k;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/bf;->c:Landroid/support/v4/util/k;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/k;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bg;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/bf;->c:Landroid/support/v4/util/k;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/k;->keyAt(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/bg;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/bg;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method final e()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0}, Landroid/support/v4/util/k;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/k;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bg;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/bg;->j:Z

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method final f()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0}, Landroid/support/v4/util/k;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/k;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bg;

    iget-boolean v2, v0, Landroid/support/v4/app/bg;->g:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/app/bg;->j:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/app/bg;->j:Z

    iget-boolean v2, v0, Landroid/support/v4/app/bg;->d:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    iget-object v3, v0, Landroid/support/v4/app/bg;->f:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/bg;->a(Landroid/support/v4/content/g;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method final g()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v4/app/bf;->f:Z

    if-nez v0, :cond_2

    sget-boolean v0, Landroid/support/v4/app/bf;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Destroying Active in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0}, Landroid/support/v4/util/k;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/k;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bg;

    invoke-virtual {v0}, Landroid/support/v4/app/bg;->c()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0}, Landroid/support/v4/util/k;->clear()V

    :cond_2
    sget-boolean v0, Landroid/support/v4/app/bf;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Destroying Inactive in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/bf;->c:Landroid/support/v4/util/k;

    invoke-virtual {v0}, Landroid/support/v4/util/k;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/bf;->c:Landroid/support/v4/util/k;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/k;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bg;

    invoke-virtual {v0}, Landroid/support/v4/app/bg;->c()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/bf;->c:Landroid/support/v4/util/k;

    invoke-virtual {v0}, Landroid/support/v4/util/k;->clear()V

    return-void
.end method

.method public final getLoader(I)Landroid/support/v4/content/g;
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/app/bf;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/k;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bg;

    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/support/v4/app/bg;->l:Landroid/support/v4/app/bg;

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroid/support/v4/app/bg;->l:Landroid/support/v4/app/bg;

    iget-object v0, v0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, v0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasRunningLoaders()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0}, Landroid/support/v4/util/k;->size()I

    move-result v4

    move v2, v1

    move v3, v1

    :goto_0
    if-ge v2, v4, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/k;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bg;

    iget-boolean v5, v0, Landroid/support/v4/app/bg;->g:Z

    if-eqz v5, :cond_0

    iget-boolean v0, v0, Landroid/support/v4/app/bg;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    or-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    return v3
.end method

.method public final initLoader$71be8de6(ILandroid/os/Bundle;Landroid/support/v4/media/routing/d;)Landroid/support/v4/content/g;
    .locals 4

    iget-boolean v0, p0, Landroid/support/v4/app/bf;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/k;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bg;

    sget-boolean v1, Landroid/support/v4/app/bf;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initLoader in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": args="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v0, :cond_4

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/bf;->b(ILandroid/os/Bundle;Landroid/support/v4/media/routing/d;)Landroid/support/v4/app/bg;

    move-result-object v0

    sget-boolean v1, Landroid/support/v4/app/bf;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Created new loader "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-boolean v1, v0, Landroid/support/v4/app/bg;->d:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/support/v4/app/bf;->e:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    iget-object v2, v0, Landroid/support/v4/app/bg;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/bg;->a(Landroid/support/v4/content/g;Ljava/lang/Object;)V

    :cond_3
    iget-object v0, v0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    return-object v0

    :cond_4
    sget-boolean v1, Landroid/support/v4/app/bf;->a:Z

    if-eqz v1, :cond_5

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Re-using existing loader "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-object p3, v0, Landroid/support/v4/app/bg;->b:Landroid/support/v4/media/routing/d;

    goto :goto_0
.end method

.method public final restartLoader$71be8de6(ILandroid/os/Bundle;Landroid/support/v4/media/routing/d;)Landroid/support/v4/content/g;
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Landroid/support/v4/app/bf;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/k;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bg;

    sget-boolean v1, Landroid/support/v4/app/bf;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "restartLoader in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": args="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/support/v4/app/bf;->c:Landroid/support/v4/util/k;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/k;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/bg;

    if-eqz v1, :cond_e

    iget-boolean v2, v0, Landroid/support/v4/app/bg;->d:Z

    if-eqz v2, :cond_5

    sget-boolean v2, Landroid/support/v4/app/bf;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Removing last inactive loader: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/bg;->e:Z

    invoke-virtual {v1}, Landroid/support/v4/app/bg;->c()V

    :cond_3
    :goto_0
    iget-object v1, v0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    invoke-virtual {v1}, Landroid/support/v4/content/g;->abandon()V

    iget-object v1, p0, Landroid/support/v4/app/bf;->c:Landroid/support/v4/util/k;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/k;->put(ILjava/lang/Object;)V

    :cond_4
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/bf;->b(ILandroid/os/Bundle;Landroid/support/v4/media/routing/d;)Landroid/support/v4/app/bg;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    :goto_2
    return-object v0

    :cond_5
    iget-boolean v1, v0, Landroid/support/v4/app/bg;->g:Z

    if-nez v1, :cond_7

    sget-boolean v1, Landroid/support/v4/app/bf;->a:Z

    if-eqz v1, :cond_6

    const-string v1, "LoaderManager"

    const-string v2, "  Current loader is stopped; replacing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Landroid/support/v4/app/bf;->b:Landroid/support/v4/util/k;

    invoke-virtual {v1, p1, v4}, Landroid/support/v4/util/k;->put(ILjava/lang/Object;)V

    invoke-virtual {v0}, Landroid/support/v4/app/bg;->c()V

    goto :goto_1

    :cond_7
    sget-boolean v1, Landroid/support/v4/app/bf;->a:Z

    if-eqz v1, :cond_8

    const-string v1, "LoaderManager"

    const-string v2, "  Current loader is running; attempting to cancel"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-boolean v1, Landroid/support/v4/app/bf;->a:Z

    if-eqz v1, :cond_9

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Canceling: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-boolean v1, v0, Landroid/support/v4/app/bg;->g:Z

    if-eqz v1, :cond_a

    iget-object v1, v0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Landroid/support/v4/app/bg;->k:Z

    if-eqz v1, :cond_a

    iget-object v1, v0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    invoke-virtual {v1}, Landroid/support/v4/content/g;->cancelLoad()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bg;->onLoadCanceled(Landroid/support/v4/content/g;)V

    :cond_a
    iget-object v1, v0, Landroid/support/v4/app/bg;->l:Landroid/support/v4/app/bg;

    if-eqz v1, :cond_c

    sget-boolean v1, Landroid/support/v4/app/bf;->a:Z

    if-eqz v1, :cond_b

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Removing pending loader: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/support/v4/app/bg;->l:Landroid/support/v4/app/bg;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v1, v0, Landroid/support/v4/app/bg;->l:Landroid/support/v4/app/bg;

    invoke-virtual {v1}, Landroid/support/v4/app/bg;->c()V

    iput-object v4, v0, Landroid/support/v4/app/bg;->l:Landroid/support/v4/app/bg;

    :cond_c
    sget-boolean v1, Landroid/support/v4/app/bf;->a:Z

    if-eqz v1, :cond_d

    const-string v1, "LoaderManager"

    const-string v2, "  Enqueuing as new pending loader"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/bf;->a(ILandroid/os/Bundle;Landroid/support/v4/media/routing/d;)Landroid/support/v4/app/bg;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/app/bg;->l:Landroid/support/v4/app/bg;

    iget-object v0, v0, Landroid/support/v4/app/bg;->l:Landroid/support/v4/app/bg;

    iget-object v0, v0, Landroid/support/v4/app/bg;->c:Landroid/support/v4/content/g;

    goto/16 :goto_2

    :cond_e
    sget-boolean v1, Landroid/support/v4/app/bf;->a:Z

    if-eqz v1, :cond_3

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Making last loader inactive: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/bf;->h:Landroid/support/v4/app/FragmentHostCallback;

    invoke-static {v1, v0}, Landroid/support/v4/app/ba;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
