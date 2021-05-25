.class final Landroid/support/v4/app/o;
.super Landroid/support/v4/app/au;

# interfaces
.implements Landroid/support/v4/app/ae;
.implements Ljava/lang/Runnable;


# static fields
.field private static n:Z


# instance fields
.field a:Landroid/support/v4/app/r;

.field b:I

.field c:I

.field d:I

.field e:Z

.field f:Ljava/lang/String;

.field g:I

.field h:I

.field i:Ljava/lang/CharSequence;

.field j:I

.field k:Ljava/lang/CharSequence;

.field l:Ljava/util/ArrayList;

.field m:Ljava/util/ArrayList;

.field private o:Landroid/support/v4/app/af;

.field private p:Landroid/support/v4/app/r;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v4/app/o;->n:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/app/af;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/au;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/o;->u:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/o;->g:I

    iput-object p1, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    return-void
.end method

.method private a(Z)I
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/support/v4/app/o;->v:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v0, Landroid/support/v4/app/af;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Commit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/support/v4/util/c;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/util/c;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "  "

    invoke-virtual {p0, v0, v3, v1, v3}, Landroid/support/v4/app/o;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/o;->v:Z

    iget-boolean v0, p0, Landroid/support/v4/app/o;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/af;->allocBackStackIndex(Landroid/support/v4/app/o;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/o;->g:I

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/af;->enqueueAction(Ljava/lang/Runnable;Z)V

    iget v0, p0, Landroid/support/v4/app/o;->g:I

    return v0

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/o;->g:I

    goto :goto_0
.end method

.method private a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/s;
    .locals 10

    const/4 v9, 0x1

    const/4 v7, 0x0

    new-instance v2, Landroid/support/v4/app/s;

    invoke-direct {v2, p0}, Landroid/support/v4/app/s;-><init>(Landroid/support/v4/app/o;)V

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    iget-object v1, v1, Landroid/support/v4/app/af;->e:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Landroid/support/v4/app/s;->d:Landroid/view/View;

    move v6, v7

    move v8, v7

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/s;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v9

    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v8, v1

    goto :goto_0

    :cond_0
    :goto_2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/s;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v8, v9

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    if-nez v8, :cond_3

    const/4 v2, 0x0

    :cond_3
    return-object v2

    :cond_4
    move v1, v8

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v4/app/o;Landroid/support/v4/app/s;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/util/ArrayMap;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v4/app/o;->l:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Landroid/support/v4/app/a;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    if-eqz p2, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/o;->l:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/o;->m:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/o;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;)Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    iget-object v1, p3, Landroid/support/v4/app/Fragment;->O:Landroid/support/v4/app/cj;

    if-eqz v1, :cond_1

    iget-object v1, p3, Landroid/support/v4/app/Fragment;->O:Landroid/support/v4/app/cj;

    iget-object v2, p0, Landroid/support/v4/app/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/cj;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    :cond_1
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/s;Landroid/support/v4/util/ArrayMap;Z)V

    :goto_1
    return-object v0

    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/cj;

    if-eqz v1, :cond_4

    iget-object v1, p3, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/cj;

    iget-object v2, p0, Landroid/support/v4/app/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/cj;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    :cond_4
    invoke-static {p1, v0, v3}, Landroid/support/v4/app/o;->b(Landroid/support/v4/app/s;Landroid/support/v4/util/ArrayMap;Z)V

    goto :goto_1
.end method

.method private a(Landroid/support/v4/app/s;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iget-object v1, p0, Landroid/support/v4/app/o;->l:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/a;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    if-eqz p3, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    :cond_0
    :goto_0
    if-eqz p3, :cond_3

    iget-object v1, p2, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/cj;

    if-eqz v1, :cond_1

    iget-object v1, p2, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/cj;

    iget-object v2, p0, Landroid/support/v4/app/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/cj;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    :cond_1
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/s;Landroid/support/v4/util/ArrayMap;Z)V

    :goto_1
    return-object v0

    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/o;->l:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/o;->m:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/o;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;)Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->O:Landroid/support/v4/app/cj;

    if-eqz v1, :cond_4

    iget-object v1, p2, Landroid/support/v4/app/Fragment;->O:Landroid/support/v4/app/cj;

    iget-object v2, p0, Landroid/support/v4/app/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/cj;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    :cond_4
    invoke-static {p1, v0, v3}, Landroid/support/v4/app/o;->b(Landroid/support/v4/app/s;Landroid/support/v4/util/ArrayMap;Z)V

    goto :goto_1
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;)Landroid/support/v4/util/ArrayMap;
    .locals 5

    invoke-virtual {p2}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object p2, v1

    goto :goto_0
.end method

.method private a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    iput-object v0, p2, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/af;

    if-eqz p3, :cond_1

    iget-object v0, p2, Landroid/support/v4/app/Fragment;->y:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/support/v4/app/Fragment;->y:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change tag of fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/v4/app/Fragment;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->y:Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_3

    iget v0, p2, Landroid/support/v4/app/Fragment;->w:I

    if-eqz v0, :cond_2

    iget v0, p2, Landroid/support/v4/app/Fragment;->w:I

    if-eq v0, p1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change container ID of fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/v4/app/Fragment;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p2, Landroid/support/v4/app/Fragment;->w:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->x:I

    :cond_3
    new-instance v0, Landroid/support/v4/app/r;

    invoke-direct {v0}, Landroid/support/v4/app/r;-><init>()V

    iput p4, v0, Landroid/support/v4/app/r;->c:I

    iput-object p2, v0, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/r;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/o;Landroid/support/v4/app/s;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/s;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/o;Landroid/support/v4/app/s;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;)V
    .locals 4

    if-eqz p4, :cond_1

    iget-object v0, p3, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/cj;

    :goto_0
    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p5}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p5}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/cj;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/cj;

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/app/o;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/s;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/o;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/o;->m:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p2, Landroid/support/v4/app/s;->c:Landroid/support/v4/app/az;

    iput-object v0, v1, Landroid/support/v4/app/az;->a:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private a(Landroid/support/v4/app/s;ILjava/lang/Object;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->I:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->H:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/support/v4/app/Fragment;->x:I

    if-ne v3, p2, :cond_0

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->z:Z

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/support/v4/app/s;->b:Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->I:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->I:Landroid/view/View;

    const/4 v4, 0x1

    invoke-static {p3, v3, v4}, Landroid/support/v4/app/a;->excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V

    iget-object v3, p1, Landroid/support/v4/app/s;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->I:Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->I:Landroid/view/View;

    invoke-static {p3, v3, v2}, Landroid/support/v4/app/a;->excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V

    iget-object v3, p1, Landroid/support/v4/app/s;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->I:Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private a(Landroid/support/v4/app/s;Landroid/support/v4/util/ArrayMap;Z)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/app/o;->m:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    move v2, v0

    :goto_0
    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/o;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/app/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/support/v4/app/a;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_2

    iget-object v4, p1, Landroid/support/v4/app/s;->a:Landroid/support/v4/util/ArrayMap;

    invoke-static {v4, v0, v1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v4, p1, Landroid/support/v4/app/s;->a:Landroid/support/v4/util/ArrayMap;

    invoke-static {v4, v1, v0}, Landroid/support/v4/app/o;->a(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static a(Landroid/support/v4/app/s;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/app/s;->a:Landroid/support/v4/util/ArrayMap;

    invoke-static {v3, v0, v1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/support/v4/app/Fragment;->x:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 6

    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->f:Landroid/support/v4/app/ab;

    invoke-virtual {v0}, Landroid/support/v4/app/ab;->onHasView()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/r;

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_0

    iget v0, v3, Landroid/support/v4/app/r;->c:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, v3, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/r;

    move-object v3, v0

    goto :goto_0

    :pswitch_0
    iget-object v0, v3, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/o;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_1
    iget-object v1, v3, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_2

    iget v4, v0, Landroid/support/v4/app/Fragment;->x:I

    iget v5, v2, Landroid/support/v4/app/Fragment;->x:I

    if-ne v4, v5, :cond_3

    :cond_2
    if-ne v0, v2, :cond_4

    const/4 v2, 0x0

    :cond_3
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    invoke-static {p1, v0}, Landroid/support/v4/app/o;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_3

    :cond_5
    move-object v2, v1

    :cond_6
    invoke-static {p2, v2}, Landroid/support/v4/app/o;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, v3, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/o;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, v3, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/o;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_4
    iget-object v0, v3, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/o;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_5
    iget-object v0, v3, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/o;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_6
    iget-object v0, v3, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/o;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private a(ILandroid/support/v4/app/s;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 36

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    iget-object v4, v4, Landroid/support/v4/app/af;->f:Landroid/support/v4/app/ab;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/support/v4/app/ab;->onFindViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    if-nez v6, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    move-object/from16 v0, p5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/Fragment;

    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/app/Fragment;

    if-nez v11, :cond_2

    const/16 v27, 0x0

    :goto_1
    if-eqz v11, :cond_1

    if-nez v12, :cond_4

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-nez v12, :cond_6

    const/4 v4, 0x0

    move-object v13, v4

    :goto_3
    const/16 v17, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v12, v2}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/s;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v7, 0x0

    const/16 v17, 0x0

    move-object v10, v7

    :goto_4
    if-nez v27, :cond_c

    if-nez v10, :cond_c

    if-nez v13, :cond_c

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {v11}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v4

    :goto_5
    invoke-static {v4}, Landroid/support/v4/app/a;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    goto :goto_1

    :cond_3
    invoke-virtual {v11}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v4

    goto :goto_5

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {v12}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v4

    :goto_6
    invoke-static {v4}, Landroid/support/v4/app/a;->wrapSharedElementTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    :cond_5
    invoke-virtual {v11}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v4

    goto :goto_6

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {v12}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v4

    :goto_7
    invoke-static {v4}, Landroid/support/v4/app/a;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    goto :goto_3

    :cond_7
    invoke-virtual {v12}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v4

    goto :goto_7

    :cond_8
    if-eqz p3, :cond_b

    iget-object v4, v12, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/cj;

    :goto_8
    if-eqz v4, :cond_9

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v9, v10}, Landroid/support/v4/app/cj;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_9
    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v14

    new-instance v4, Landroid/support/v4/app/p;

    move-object/from16 v5, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    invoke-direct/range {v4 .. v12}, Landroid/support/v4/app/p;-><init>(Landroid/support/v4/app/o;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Landroid/support/v4/app/s;ZLandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v14, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_a
    move-object v10, v7

    goto :goto_4

    :cond_b
    iget-object v4, v11, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/cj;

    goto :goto_8

    :cond_c
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/support/v4/app/s;->d:Landroid/view/View;

    if-eqz v13, :cond_13

    invoke-virtual {v12}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-static {v13, v5, v0, v1, v4}, Landroid/support/v4/app/a;->captureExitingViews(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v29

    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/o;->m:Ljava/util/ArrayList;

    if-eqz v4, :cond_e

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/o;->m:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_e

    if-eqz v29, :cond_d

    move-object/from16 v0, v29

    invoke-static {v0, v4}, Landroid/support/v4/app/a;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    :cond_d
    if-eqz v10, :cond_e

    invoke-static {v10, v4}, Landroid/support/v4/app/a;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    :cond_e
    new-instance v12, Landroid/support/v4/app/ba;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v11}, Landroid/support/v4/app/ba;-><init>(Landroid/support/v4/app/o;Landroid/support/v4/app/Fragment;)V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Landroid/support/v4/util/ArrayMap;

    invoke-direct/range {v18 .. v18}, Landroid/support/v4/util/ArrayMap;-><init>()V

    const/4 v4, 0x1

    if-eqz v11, :cond_f

    if-eqz p3, :cond_11

    invoke-virtual {v11}, Landroid/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v4

    :cond_f
    :goto_a
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1, v10, v4}, Landroid/support/v4/app/a;->mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_10

    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/support/v4/app/s;->d:Landroid/view/View;

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/support/v4/app/s;->c:Landroid/support/v4/app/az;

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/support/v4/app/s;->a:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v9, v27

    move-object v11, v6

    move-object/from16 v19, v8

    invoke-static/range {v9 .. v19}, Landroid/support/v4/app/a;->addTransitionTargets(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/ba;Landroid/view/View;Landroid/support/v4/app/az;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V

    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v19, Landroid/support/v4/app/q;

    move-object/from16 v20, p0

    move-object/from16 v21, v6

    move-object/from16 v22, p2

    move/from16 v23, p1

    invoke-direct/range {v19 .. v24}, Landroid/support/v4/app/q;-><init>(Landroid/support/v4/app/o;Landroid/view/View;Landroid/support/v4/app/s;ILjava/lang/Object;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/support/v4/app/s;->d:Landroid/view/View;

    const/4 v5, 0x1

    move-object/from16 v0, v24

    invoke-static {v0, v4, v5}, Landroid/support/v4/app/a;->excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/s;ILjava/lang/Object;)V

    move-object/from16 v0, v24

    invoke-static {v6, v0}, Landroid/support/v4/app/a;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/s;->d:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v25, v6

    move-object/from16 v28, v16

    move-object/from16 v31, v10

    move-object/from16 v32, v8

    move-object/from16 v33, v24

    move-object/from16 v35, v18

    invoke-static/range {v25 .. v35}, Landroid/support/v4/app/a;->cleanupTransitions(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)V

    :cond_10
    if-eqz v24, :cond_12

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v11}, Landroid/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v4

    goto :goto_a

    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_13
    move-object/from16 v29, v13

    goto/16 :goto_9
.end method

.method private static b(Landroid/support/v4/app/s;Landroid/support/v4/util/ArrayMap;Z)V
    .locals 5

    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/app/a;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    iget-object v4, p0, Landroid/support/v4/app/s;->a:Landroid/support/v4/util/ArrayMap;

    invoke-static {v4, v0, v1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/support/v4/app/s;->a:Landroid/support/v4/util/ArrayMap;

    invoke-static {v4, v1, v0}, Landroid/support/v4/app/o;->a(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/support/v4/app/Fragment;->x:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 6

    iget-boolean v0, p0, Landroid/support/v4/app/o;->e:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v0, Landroid/support/v4/app/af;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bump nesting in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/r;

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_3

    iget-object v0, v2, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    iget v1, v0, Landroid/support/v4/app/Fragment;->r:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/support/v4/app/Fragment;->r:I

    sget-boolean v0, Landroid/support/v4/app/af;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Bump nesting of "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    iget v3, v3, Landroid/support/v4/app/Fragment;->r:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, v2, Landroid/support/v4/app/r;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, v2, Landroid/support/v4/app/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_5

    iget-object v0, v2, Landroid/support/v4/app/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v3, v0, Landroid/support/v4/app/Fragment;->r:I

    add-int/2addr v3, p1

    iput v3, v0, Landroid/support/v4/app/Fragment;->r:I

    sget-boolean v3, Landroid/support/v4/app/af;->a:Z

    if-eqz v3, :cond_4

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bump nesting of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/support/v4/app/Fragment;->r:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_5
    iget-object v0, v2, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/r;

    move-object v2, v0

    goto :goto_0
.end method

.method final a(Landroid/support/v4/app/r;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/r;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/support/v4/app/o;->p:Landroid/support/v4/app/r;

    iput-object p1, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/r;

    :goto_0
    iget v0, p0, Landroid/support/v4/app/o;->q:I

    iput v0, p1, Landroid/support/v4/app/r;->e:I

    iget v0, p0, Landroid/support/v4/app/o;->r:I

    iput v0, p1, Landroid/support/v4/app/r;->f:I

    iget v0, p0, Landroid/support/v4/app/o;->s:I

    iput v0, p1, Landroid/support/v4/app/r;->g:I

    iget v0, p0, Landroid/support/v4/app/o;->t:I

    iput v0, p1, Landroid/support/v4/app/r;->h:I

    iget v0, p0, Landroid/support/v4/app/o;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/o;->b:I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/o;->p:Landroid/support/v4/app/r;

    iput-object v0, p1, Landroid/support/v4/app/r;->b:Landroid/support/v4/app/r;

    iget-object v0, p0, Landroid/support/v4/app/o;->p:Landroid/support/v4/app/r;

    iput-object p1, v0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/r;

    iput-object p1, p0, Landroid/support/v4/app/o;->p:Landroid/support/v4/app/r;

    goto :goto_0
.end method

.method public final add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/au;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public final add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/au;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public final add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/au;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public final addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/au;
    .locals 2

    sget-boolean v0, Landroid/support/v4/app/o;->n:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/support/v4/app/a;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unique transitionNames are required for all sharedElements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/o;->l:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/o;->l:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/o;->m:Ljava/util/ArrayList;

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/o;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v4/app/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p0
.end method

.method public final addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/au;
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/app/o;->u:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/o;->e:Z

    iput-object p1, p0, Landroid/support/v4/app/o;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/au;
    .locals 2

    new-instance v0, Landroid/support/v4/app/r;

    invoke-direct {v0}, Landroid/support/v4/app/r;-><init>()V

    const/4 v1, 0x7

    iput v1, v0, Landroid/support/v4/app/r;->c:I

    iput-object p1, v0, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/r;)V

    return-object p0
.end method

.method public final calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->f:Landroid/support/v4/app/ab;

    invoke-virtual {v0}, Landroid/support/v4/app/ab;->onHasView()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/r;

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    iget v0, v2, Landroid/support/v4/app/r;->c:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, v2, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/r;

    move-object v2, v0

    goto :goto_0

    :pswitch_0
    iget-object v0, v2, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/o;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, v2, Landroid/support/v4/app/r;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, v2, Landroid/support/v4/app/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_2

    iget-object v0, v2, Landroid/support/v4/app/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/o;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_2
    iget-object v0, v2, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/o;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, v2, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/o;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, v2, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/o;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_4
    iget-object v0, v2, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/o;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_5
    iget-object v0, v2, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/o;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_6
    iget-object v0, v2, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/o;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final commit()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/o;->a(Z)I

    move-result v0

    return v0
.end method

.method public final commitAllowingStateLoss()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/o;->a(Z)I

    move-result v0

    return v0
.end method

.method public final detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/au;
    .locals 2

    new-instance v0, Landroid/support/v4/app/r;

    invoke-direct {v0}, Landroid/support/v4/app/r;-><init>()V

    const/4 v1, 0x6

    iput v1, v0, Landroid/support/v4/app/r;->c:I

    iput-object p1, v0, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/r;)V

    return-object p0
.end method

.method public final disallowAddToBackStack()Landroid/support/v4/app/au;
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/app/o;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/o;->u:Z

    return-object p0
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Landroid/support/v4/app/o;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7

    const/4 v1, 0x0

    if-eqz p3, :cond_8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/o;->g:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/o;->v:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Landroid/support/v4/app/o;->c:I

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/o;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/o;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Landroid/support/v4/app/o;->q:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/o;->r:I

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/o;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/o;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Landroid/support/v4/app/o;->s:I

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v4/app/o;->t:I

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/o;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/o;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Landroid/support/v4/app/o;->h:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/o;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/o;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/o;->i:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget v0, p0, Landroid/support/v4/app/o;->j:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/app/o;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/o;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/o;->k:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/r;

    if-eqz v0, :cond_10

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/r;

    move v2, v1

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_10

    iget v0, v3, Landroid/support/v4/app/r;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "cmd="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Landroid/support/v4/app/r;->c:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v3, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_c

    iget v0, v3, Landroid/support/v4/app/r;->e:I

    if-nez v0, :cond_9

    iget v0, v3, Landroid/support/v4/app/r;->f:I

    if-eqz v0, :cond_a

    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "enterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Landroid/support/v4/app/r;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " exitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Landroid/support/v4/app/r;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget v0, v3, Landroid/support/v4/app/r;->g:I

    if-nez v0, :cond_b

    iget v0, v3, Landroid/support/v4/app/r;->h:I

    if-eqz v0, :cond_c

    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "popEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Landroid/support/v4/app/r;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " popExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Landroid/support/v4/app/r;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    iget-object v0, v3, Landroid/support/v4/app/r;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    iget-object v0, v3, Landroid/support/v4/app/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    move v0, v1

    :goto_2
    iget-object v5, v3, Landroid/support/v4/app/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_f

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Landroid/support/v4/app/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    const-string v5, "Removed: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_3
    iget-object v5, v3, Landroid/support/v4/app/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_0
    const-string v0, "NULL"

    goto/16 :goto_1

    :pswitch_1
    const-string v0, "ADD"

    goto/16 :goto_1

    :pswitch_2
    const-string v0, "REPLACE"

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "REMOVE"

    goto/16 :goto_1

    :pswitch_4
    const-string v0, "HIDE"

    goto/16 :goto_1

    :pswitch_5
    const-string v0, "SHOW"

    goto/16 :goto_1

    :pswitch_6
    const-string v0, "DETACH"

    goto/16 :goto_1

    :pswitch_7
    const-string v0, "ATTACH"

    goto/16 :goto_1

    :cond_d
    if-nez v0, :cond_e

    const-string v5, "Removed:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    iget-object v3, v3, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/r;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .locals 2

    iget v0, p0, Landroid/support/v4/app/o;->j:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->e:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->b()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/o;->j:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/o;->k:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public final getBreadCrumbShortTitleRes()I
    .locals 1

    iget v0, p0, Landroid/support/v4/app/o;->j:I

    return v0
.end method

.method public final getBreadCrumbTitle()Ljava/lang/CharSequence;
    .locals 2

    iget v0, p0, Landroid/support/v4/app/o;->h:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->e:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->b()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/o;->h:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/o;->i:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public final getBreadCrumbTitleRes()I
    .locals 1

    iget v0, p0, Landroid/support/v4/app/o;->h:I

    return v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Landroid/support/v4/app/o;->g:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransition()I
    .locals 1

    iget v0, p0, Landroid/support/v4/app/o;->c:I

    return v0
.end method

.method public final getTransitionStyle()I
    .locals 1

    iget v0, p0, Landroid/support/v4/app/o;->d:I

    return v0
.end method

.method public final hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/au;
    .locals 2

    new-instance v0, Landroid/support/v4/app/r;

    invoke-direct {v0}, Landroid/support/v4/app/r;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Landroid/support/v4/app/r;->c:I

    iput-object p1, v0, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/r;)V

    return-object p0
.end method

.method public final isAddToBackStackAllowed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/o;->u:Z

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Landroid/support/v4/app/o;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final popFromBackStack(ZLandroid/support/v4/app/s;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/s;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    sget-boolean v0, Landroid/support/v4/app/af;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "popFromBackStack: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/support/v4/util/c;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/util/c;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "  "

    invoke-virtual {p0, v0, v4, v1, v4}, Landroid/support/v4/app/o;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Landroid/support/v4/app/o;->n:Z

    if-eqz v0, :cond_2

    if-nez p2, :cond_3

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, p3, p4, v10}, Landroid/support/v4/app/o;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/s;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-virtual {p0, v9}, Landroid/support/v4/app/o;->a(I)V

    if-eqz p2, :cond_4

    move v7, v2

    :goto_1
    if-eqz p2, :cond_5

    move v1, v2

    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/o;->p:Landroid/support/v4/app/r;

    move-object v6, v0

    :goto_3
    if-eqz v6, :cond_a

    if-eqz p2, :cond_6

    move v5, v2

    :goto_4
    if-eqz p2, :cond_7

    move v0, v2

    :goto_5
    iget v3, v6, Landroid/support/v4/app/r;->c:I

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown cmd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v6, Landroid/support/v4/app/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/o;->m:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/o;->l:Ljava/util/ArrayList;

    invoke-static {p2, v0, v1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/s;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Landroid/support/v4/app/o;->d:I

    move v7, v0

    goto :goto_1

    :cond_5
    iget v0, p0, Landroid/support/v4/app/o;->c:I

    move v1, v0

    goto :goto_2

    :cond_6
    iget v0, v6, Landroid/support/v4/app/r;->g:I

    move v5, v0

    goto :goto_4

    :cond_7
    iget v0, v6, Landroid/support/v4/app/r;->h:I

    goto :goto_5

    :pswitch_0
    iget-object v3, v6, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    iput v0, v3, Landroid/support/v4/app/Fragment;->G:I

    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    invoke-static {v1}, Landroid/support/v4/app/af;->reverseTransit(I)I

    move-result v5

    invoke-virtual {v0, v3, v5, v7}, Landroid/support/v4/app/af;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    :cond_8
    :goto_6
    iget-object v0, v6, Landroid/support/v4/app/r;->b:Landroid/support/v4/app/r;

    move-object v6, v0

    goto :goto_3

    :pswitch_1
    iget-object v3, v6, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_9

    iput v0, v3, Landroid/support/v4/app/Fragment;->G:I

    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    invoke-static {v1}, Landroid/support/v4/app/af;->reverseTransit(I)I

    move-result v8

    invoke-virtual {v0, v3, v8, v7}, Landroid/support/v4/app/af;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    :cond_9
    iget-object v0, v6, Landroid/support/v4/app/r;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    move v3, v2

    :goto_7
    iget-object v0, v6, Landroid/support/v4/app/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    iget-object v0, v6, Landroid/support/v4/app/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iput v5, v0, Landroid/support/v4/app/Fragment;->G:I

    iget-object v8, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    invoke-virtual {v8, v0, v2}, Landroid/support/v4/app/af;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    :pswitch_2
    iget-object v0, v6, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    iput v5, v0, Landroid/support/v4/app/Fragment;->G:I

    iget-object v3, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/app/af;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_6

    :pswitch_3
    iget-object v0, v6, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    iput v5, v0, Landroid/support/v4/app/Fragment;->G:I

    iget-object v3, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    invoke-static {v1}, Landroid/support/v4/app/af;->reverseTransit(I)I

    move-result v5

    invoke-virtual {v3, v0, v5, v7}, Landroid/support/v4/app/af;->showFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    :pswitch_4
    iget-object v3, v6, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    iput v0, v3, Landroid/support/v4/app/Fragment;->G:I

    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    invoke-static {v1}, Landroid/support/v4/app/af;->reverseTransit(I)I

    move-result v5

    invoke-virtual {v0, v3, v5, v7}, Landroid/support/v4/app/af;->hideFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    :pswitch_5
    iget-object v0, v6, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    iput v5, v0, Landroid/support/v4/app/Fragment;->G:I

    iget-object v3, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    invoke-static {v1}, Landroid/support/v4/app/af;->reverseTransit(I)I

    move-result v5

    invoke-virtual {v3, v0, v5, v7}, Landroid/support/v4/app/af;->attachFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    :pswitch_6
    iget-object v0, v6, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    iput v5, v0, Landroid/support/v4/app/Fragment;->G:I

    iget-object v3, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    invoke-static {v1}, Landroid/support/v4/app/af;->reverseTransit(I)I

    move-result v5

    invoke-virtual {v3, v0, v5, v7}, Landroid/support/v4/app/af;->detachFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    :cond_a
    if-eqz p1, :cond_b

    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    iget-object v2, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    iget v2, v2, Landroid/support/v4/app/af;->d:I

    invoke-static {v1}, Landroid/support/v4/app/af;->reverseTransit(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v7, v10}, Landroid/support/v4/app/af;->a(IIIZ)V

    move-object p2, v4

    :cond_b
    iget v0, p0, Landroid/support/v4/app/o;->g:I

    if-ltz v0, :cond_c

    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    iget v1, p0, Landroid/support/v4/app/o;->g:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/af;->freeBackStackIndex(I)V

    iput v9, p0, Landroid/support/v4/app/o;->g:I

    :cond_c
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/au;
    .locals 2

    new-instance v0, Landroid/support/v4/app/r;

    invoke-direct {v0}, Landroid/support/v4/app/r;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/support/v4/app/r;->c:I

    iput-object p1, v0, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/r;)V

    return-object p0
.end method

.method public final replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/au;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/o;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/au;

    move-result-object v0

    return-object v0
.end method

.method public final replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/au;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public final run()V
    .locals 13

    sget-boolean v0, Landroid/support/v4/app/af;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Run: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/o;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/o;->g:I

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/o;->a(I)V

    const/4 v0, 0x0

    sget-boolean v1, Landroid/support/v4/app/o;->n:Z

    if-eqz v1, :cond_10

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/o;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/app/o;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/s;

    move-result-object v0

    move-object v8, v0

    :goto_0
    if-eqz v8, :cond_2

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-eqz v8, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/r;

    move-object v6, v0

    :goto_3
    if-eqz v6, :cond_e

    if-eqz v8, :cond_4

    const/4 v0, 0x0

    move v5, v0

    :goto_4
    if-eqz v8, :cond_5

    const/4 v0, 0x0

    move v2, v0

    :goto_5
    iget v0, v6, Landroid/support/v4/app/r;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown cmd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v6, Landroid/support/v4/app/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Landroid/support/v4/app/o;->d:I

    move v7, v0

    goto :goto_1

    :cond_3
    iget v0, p0, Landroid/support/v4/app/o;->c:I

    move v1, v0

    goto :goto_2

    :cond_4
    iget v0, v6, Landroid/support/v4/app/r;->e:I

    move v5, v0

    goto :goto_4

    :cond_5
    iget v0, v6, Landroid/support/v4/app/r;->f:I

    move v2, v0

    goto :goto_5

    :pswitch_0
    iget-object v0, v6, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    iput v5, v0, Landroid/support/v4/app/Fragment;->G:I

    iget-object v2, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/af;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    :cond_6
    :goto_6
    iget-object v0, v6, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/r;

    move-object v6, v0

    goto :goto_3

    :pswitch_1
    iget-object v3, v6, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    iget v9, v3, Landroid/support/v4/app/Fragment;->x:I

    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    move-object v4, v3

    move v3, v0

    :goto_7
    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_d

    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    sget-boolean v10, Landroid/support/v4/app/af;->a:Z

    if-eqz v10, :cond_7

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "OP_REPLACE: adding="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " old="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget v10, v0, Landroid/support/v4/app/Fragment;->x:I

    if-ne v10, v9, :cond_8

    if-ne v0, v4, :cond_9

    const/4 v4, 0x0

    iput-object v4, v6, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    :cond_8
    :goto_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    :cond_9
    iget-object v10, v6, Landroid/support/v4/app/r;->i:Ljava/util/ArrayList;

    if-nez v10, :cond_a

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Landroid/support/v4/app/r;->i:Ljava/util/ArrayList;

    :cond_a
    iget-object v10, v6, Landroid/support/v4/app/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v2, v0, Landroid/support/v4/app/Fragment;->G:I

    iget-boolean v10, p0, Landroid/support/v4/app/o;->e:Z

    if-eqz v10, :cond_b

    iget v10, v0, Landroid/support/v4/app/Fragment;->r:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Landroid/support/v4/app/Fragment;->r:I

    sget-boolean v10, Landroid/support/v4/app/af;->a:Z

    if-eqz v10, :cond_b

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Bump nesting of "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Landroid/support/v4/app/Fragment;->r:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v10, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    invoke-virtual {v10, v0, v1, v7}, Landroid/support/v4/app/af;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_8

    :cond_c
    move-object v4, v3

    :cond_d
    if-eqz v4, :cond_6

    iput v5, v4, Landroid/support/v4/app/Fragment;->G:I

    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/support/v4/app/af;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    goto/16 :goto_6

    :pswitch_2
    iget-object v0, v6, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    iput v2, v0, Landroid/support/v4/app/Fragment;->G:I

    iget-object v2, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/af;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    :pswitch_3
    iget-object v0, v6, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    iput v2, v0, Landroid/support/v4/app/Fragment;->G:I

    iget-object v2, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/af;->hideFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    :pswitch_4
    iget-object v0, v6, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    iput v5, v0, Landroid/support/v4/app/Fragment;->G:I

    iget-object v2, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/af;->showFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    :pswitch_5
    iget-object v0, v6, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    iput v2, v0, Landroid/support/v4/app/Fragment;->G:I

    iget-object v2, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/af;->detachFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    :pswitch_6
    iget-object v0, v6, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    iput v5, v0, Landroid/support/v4/app/Fragment;->G:I

    iget-object v2, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/af;->attachFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    :cond_e
    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    iget-object v2, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    iget v2, v2, Landroid/support/v4/app/af;->d:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v7, v3}, Landroid/support/v4/app/af;->a(IIIZ)V

    iget-boolean v0, p0, Landroid/support/v4/app/o;->e:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/af;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/af;->a(Landroid/support/v4/app/o;)V

    :cond_f
    return-void

    :cond_10
    move-object v8, v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final setBreadCrumbShortTitle(I)Landroid/support/v4/app/au;
    .locals 1

    iput p1, p0, Landroid/support/v4/app/o;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/o;->k:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/au;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/o;->j:I

    iput-object p1, p0, Landroid/support/v4/app/o;->k:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setBreadCrumbTitle(I)Landroid/support/v4/app/au;
    .locals 1

    iput p1, p0, Landroid/support/v4/app/o;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/o;->i:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/au;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/o;->h:I

    iput-object p1, p0, Landroid/support/v4/app/o;->i:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setCustomAnimations(II)Landroid/support/v4/app/au;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v4/app/o;->setCustomAnimations(IIII)Landroid/support/v4/app/au;

    move-result-object v0

    return-object v0
.end method

.method public final setCustomAnimations(IIII)Landroid/support/v4/app/au;
    .locals 0

    iput p1, p0, Landroid/support/v4/app/o;->q:I

    iput p2, p0, Landroid/support/v4/app/o;->r:I

    iput p3, p0, Landroid/support/v4/app/o;->s:I

    iput p4, p0, Landroid/support/v4/app/o;->t:I

    return-object p0
.end method

.method public final setTransition(I)Landroid/support/v4/app/au;
    .locals 0

    iput p1, p0, Landroid/support/v4/app/o;->c:I

    return-object p0
.end method

.method public final setTransitionStyle(I)Landroid/support/v4/app/au;
    .locals 0

    iput p1, p0, Landroid/support/v4/app/o;->d:I

    return-object p0
.end method

.method public final show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/au;
    .locals 2

    new-instance v0, Landroid/support/v4/app/r;

    invoke-direct {v0}, Landroid/support/v4/app/r;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Landroid/support/v4/app/r;->c:I

    iput-object p1, v0, Landroid/support/v4/app/r;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/r;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/o;->g:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/o;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/o;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
