.class public Lorg/jboss/netty/handler/codec/serialization/WeakReferenceMap;
.super Lorg/jboss/netty/handler/codec/serialization/g;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/serialization/g;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    invoke-super {p0}, Lorg/jboss/netty/handler/codec/serialization/g;->clear()V

    return-void
.end method

.method public bridge synthetic containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lorg/jboss/netty/handler/codec/serialization/g;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lorg/jboss/netty/handler/codec/serialization/g;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/handler/codec/serialization/g;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method fold(Ljava/lang/Object;)Ljava/lang/ref/Reference;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-super {p0, p1}, Lorg/jboss/netty/handler/codec/serialization/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/handler/codec/serialization/g;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/handler/codec/serialization/g;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/codec/serialization/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/jboss/netty/handler/codec/serialization/g;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-super {p0, p1}, Lorg/jboss/netty/handler/codec/serialization/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/handler/codec/serialization/g;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/handler/codec/serialization/g;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
