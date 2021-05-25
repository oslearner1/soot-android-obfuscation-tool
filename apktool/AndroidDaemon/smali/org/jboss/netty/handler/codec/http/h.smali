.class final Lorg/jboss/netty/handler/codec/http/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lorg/jboss/netty/handler/codec/http/h;

.field e:Lorg/jboss/netty/handler/codec/http/h;

.field f:Lorg/jboss/netty/handler/codec/http/h;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jboss/netty/handler/codec/http/h;->a:I

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/jboss/netty/handler/codec/http/h;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/h;->e:Lorg/jboss/netty/handler/codec/http/h;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/h;->f:Lorg/jboss/netty/handler/codec/http/h;

    iput-object v1, v0, Lorg/jboss/netty/handler/codec/http/h;->f:Lorg/jboss/netty/handler/codec/http/h;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/h;->f:Lorg/jboss/netty/handler/codec/http/h;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/h;->e:Lorg/jboss/netty/handler/codec/http/h;

    iput-object v1, v0, Lorg/jboss/netty/handler/codec/http/h;->e:Lorg/jboss/netty/handler/codec/http/h;

    return-void
.end method

.method final a(Lorg/jboss/netty/handler/codec/http/h;)V
    .locals 1

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/h;->f:Lorg/jboss/netty/handler/codec/http/h;

    iget-object v0, p1, Lorg/jboss/netty/handler/codec/http/h;->e:Lorg/jboss/netty/handler/codec/http/h;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/h;->e:Lorg/jboss/netty/handler/codec/http/h;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/h;->e:Lorg/jboss/netty/handler/codec/http/h;

    iput-object p0, v0, Lorg/jboss/netty/handler/codec/http/h;->f:Lorg/jboss/netty/handler/codec/http/h;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/h;->f:Lorg/jboss/netty/handler/codec/http/h;

    iput-object p0, v0, Lorg/jboss/netty/handler/codec/http/h;->e:Lorg/jboss/netty/handler/codec/http/h;

    return-void
.end method

.method public final bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/h;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/h;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/h;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/h;->c:Ljava/lang/String;

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
