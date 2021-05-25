.class public interface abstract Lorg/jboss/netty/channel/ChannelFutureListener;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/EventListener;


# static fields
.field public static final CLOSE:Lorg/jboss/netty/channel/ChannelFutureListener;

.field public static final CLOSE_ON_FAILURE:Lorg/jboss/netty/channel/ChannelFutureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/channel/b;

    invoke-direct {v0}, Lorg/jboss/netty/channel/b;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE:Lorg/jboss/netty/channel/ChannelFutureListener;

    new-instance v0, Lorg/jboss/netty/channel/c;

    invoke-direct {v0}, Lorg/jboss/netty/channel/c;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lorg/jboss/netty/channel/ChannelFutureListener;

    return-void
.end method


# virtual methods
.method public abstract operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
.end method
