.class final Lorg/jboss/netty/util/internal/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:Lorg/jboss/netty/util/internal/az;

.field private b:Ljava/lang/Object;

.field private c:Lorg/jboss/netty/util/internal/az;

.field private d:Lorg/jboss/netty/util/internal/az;

.field private synthetic e:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;)V
    .locals 1

    iput-object p1, p0, Lorg/jboss/netty/util/internal/ay;->e:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/ay;->a(Lorg/jboss/netty/util/internal/az;)V

    return-void
.end method

.method private a(Lorg/jboss/netty/util/internal/az;)V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ay;->c:Lorg/jboss/netty/util/internal/az;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ay;->d:Lorg/jboss/netty/util/internal/az;

    iput-object p1, p0, Lorg/jboss/netty/util/internal/ay;->c:Lorg/jboss/netty/util/internal/az;

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ay;->e:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/az;

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, v0, Lorg/jboss/netty/util/internal/az;->b:Ljava/lang/Object;

    iget-boolean v2, v0, Lorg/jboss/netty/util/internal/az;->a:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    if-eq v1, v0, :cond_2

    invoke-static {v1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/util/internal/ay;->b:Ljava/lang/Object;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ay;->a:Lorg/jboss/netty/util/internal/az;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ay;->e:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->succ(Lorg/jboss/netty/util/internal/az;)Lorg/jboss/netty/util/internal/az;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ay;->e:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;

    invoke-virtual {v1, v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->succ(Lorg/jboss/netty/util/internal/az;)Lorg/jboss/netty/util/internal/az;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ay;->a:Lorg/jboss/netty/util/internal/az;

    goto :goto_1
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ay;->a:Lorg/jboss/netty/util/internal/az;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ay;->a:Lorg/jboss/netty/util/internal/az;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ay;->b:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/ay;->a(Lorg/jboss/netty/util/internal/az;)V

    return-object v1
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ay;->c:Lorg/jboss/netty/util/internal/az;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/az;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jboss/netty/util/internal/ay;->e:Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;

    iget-object v2, p0, Lorg/jboss/netty/util/internal/ay;->d:Lorg/jboss/netty/util/internal/az;

    invoke-virtual {v1, v2, v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->unsplice(Lorg/jboss/netty/util/internal/az;Lorg/jboss/netty/util/internal/az;)V

    :cond_1
    return-void
.end method
