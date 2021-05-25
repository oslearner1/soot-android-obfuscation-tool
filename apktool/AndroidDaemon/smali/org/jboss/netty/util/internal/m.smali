.class final Lorg/jboss/netty/util/internal/m;
.super Lorg/jboss/netty/util/internal/j;


# instance fields
.field private synthetic a:Lorg/jboss/netty/util/internal/ConcurrentHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/util/internal/m;->a:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-direct {p0, p2, p3}, Lorg/jboss/netty/util/internal/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lorg/jboss/netty/util/internal/j;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/util/internal/m;->a:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/m;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
