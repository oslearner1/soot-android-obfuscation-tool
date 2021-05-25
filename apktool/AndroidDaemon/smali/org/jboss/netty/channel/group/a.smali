.class final Lorg/jboss/netty/channel/group/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final a:Ljava/util/Iterator;

.field private final b:Ljava/util/Iterator;

.field private c:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "i1"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "i2"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/channel/group/a;->a:Ljava/util/Iterator;

    iput-object p2, p0, Lorg/jboss/netty/channel/group/a;->b:Ljava/util/Iterator;

    iput-object p1, p0, Lorg/jboss/netty/channel/group/a;->c:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/group/a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/group/a;->c:Ljava/util/Iterator;

    iget-object v1, p0, Lorg/jboss/netty/channel/group/a;->a:Ljava/util/Iterator;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/channel/group/a;->b:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/jboss/netty/channel/group/a;->c:Ljava/util/Iterator;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/group/a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/channel/group/a;->c:Ljava/util/Iterator;

    iget-object v2, p0, Lorg/jboss/netty/channel/group/a;->a:Ljava/util/Iterator;

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/group/a;->b:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/jboss/netty/channel/group/a;->c:Ljava/util/Iterator;

    goto :goto_0

    :cond_0
    throw v0
.end method

.method public final remove()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/group/a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
