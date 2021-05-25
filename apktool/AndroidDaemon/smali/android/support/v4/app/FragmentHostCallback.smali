.class public abstract Landroid/support/v4/app/FragmentHostCallback;
.super Landroid/support/v4/app/ab;


# instance fields
.field final a:Landroid/support/v4/app/af;

.field private final b:Landroid/app/Activity;

.field private c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;

.field private e:I

.field private f:Landroid/support/v4/util/j;

.field private g:Z

.field private h:Landroid/support/v4/app/bf;

.field private i:Z

.field private j:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/ab;-><init>()V

    new-instance v0, Landroid/support/v4/app/af;

    invoke-direct {v0}, Landroid/support/v4/app/af;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    iput-object p1, p0, Landroid/support/v4/app/FragmentHostCallback;->b:Landroid/app/Activity;

    iput-object p2, p0, Landroid/support/v4/app/FragmentHostCallback;->c:Landroid/content/Context;

    iput-object p3, p0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/os/Handler;

    iput p4, p0, Landroid/support/v4/app/FragmentHostCallback;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    iget-object v0, p1, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method final a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->b:Landroid/app/Activity;

    return-object v0
.end method

.method final a(Ljava/lang/String;ZZ)Landroid/support/v4/app/bf;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/j;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/util/j;

    invoke-direct {v0}, Landroid/support/v4/util/j;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/j;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bf;

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    new-instance v0, Landroid/support/v4/app/bf;

    invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/bf;-><init>(Ljava/lang/String;Landroid/support/v4/app/FragmentHostCallback;Z)V

    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/j;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0, p0}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/FragmentHostCallback;)V

    goto :goto_0
.end method

.method final a(Landroid/support/v4/util/j;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/j;

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bf;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/bf;->f:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/bf;->g()V

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/bf;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/bf;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/bf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/bf;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final a(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/support/v4/app/FragmentHostCallback;->g:Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/bf;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->j:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/bf;

    invoke-virtual {v0}, Landroid/support/v4/app/bf;->c()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/bf;

    invoke-virtual {v0}, Landroid/support/v4/app/bf;->b()V

    goto :goto_0
.end method

.method final b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->c:Landroid/content/Context;

    return-object v0
.end method

.method final c()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/os/Handler;

    return-object v0
.end method

.method final d()Landroid/support/v4/app/af;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    return-object v0
.end method

.method final e()Landroid/support/v4/app/bf;
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/bf;

    :goto_0
    return-object v0

    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentHostCallback;->i:Z

    const-string v0, "(root)"

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentHostCallback;->j:Z

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentHostCallback;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/bf;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/bf;

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/bf;

    goto :goto_0
.end method

.method final f()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->g:Z

    return v0
.end method

.method final g()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->j:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentHostCallback;->j:Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/bf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/bf;

    invoke-virtual {v0}, Landroid/support/v4/app/bf;->a()V

    :cond_1
    :goto_1
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentHostCallback;->i:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->i:Z

    if-nez v0, :cond_1

    const-string v0, "(root)"

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentHostCallback;->j:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentHostCallback;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/bf;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/bf;

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/bf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/bf;

    iget-boolean v0, v0, Landroid/support/v4/app/bf;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/bf;

    invoke-virtual {v0}, Landroid/support/v4/app/bf;->a()V

    goto :goto_1
.end method

.method final h()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/bf;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/bf;

    invoke-virtual {v0}, Landroid/support/v4/app/bf;->c()V

    goto :goto_0
.end method

.method final i()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/bf;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/bf;

    invoke-virtual {v0}, Landroid/support/v4/app/bf;->g()V

    goto :goto_0
.end method

.method final j()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/j;

    invoke-virtual {v0}, Landroid/support/v4/util/j;->size()I

    move-result v2

    new-array v3, v2, [Landroid/support/v4/app/bf;

    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/j;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bf;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v1, v3, v0

    invoke-virtual {v1}, Landroid/support/v4/app/bf;->d()V

    invoke-virtual {v1}, Landroid/support/v4/app/bf;->f()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method final k()Landroid/support/v4/util/j;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/j;

    invoke-virtual {v0}, Landroid/support/v4/util/j;->size()I

    move-result v3

    new-array v4, v3, [Landroid/support/v4/app/bf;

    add-int/lit8 v0, v3, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/j;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/j;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bf;

    aput-object v0, v4, v2

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v2, v4, v1

    iget-boolean v5, v2, Landroid/support/v4/app/bf;->f:Z

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/app/bf;->g()V

    iget-object v5, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/j;

    iget-object v2, v2, Landroid/support/v4/app/bf;->d:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/support/v4/util/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/j;

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onGetHost()Ljava/lang/Object;
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->c:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 1

    iget v0, p0, Landroid/support/v4/app/FragmentHostCallback;->e:I

    return v0
.end method

.method public onHasView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onRequestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onShouldSaveFragmentState(Landroid/support/v4/app/Fragment;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->c:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onSupportInvalidateOptionsMenu()V
    .locals 0

    return-void
.end method
