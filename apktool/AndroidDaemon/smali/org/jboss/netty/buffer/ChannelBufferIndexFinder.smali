.class public interface abstract Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;
.super Ljava/lang/Object;


# static fields
.field public static final CR:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

.field public static final CRLF:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

.field public static final LF:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

.field public static final LINEAR_WHITESPACE:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

.field public static final NOT_CR:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

.field public static final NOT_CRLF:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

.field public static final NOT_LF:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

.field public static final NOT_LINEAR_WHITESPACE:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

.field public static final NOT_NUL:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

.field public static final NUL:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/buffer/a;

    invoke-direct {v0}, Lorg/jboss/netty/buffer/a;-><init>()V

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->NUL:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    new-instance v0, Lorg/jboss/netty/buffer/c;

    invoke-direct {v0}, Lorg/jboss/netty/buffer/c;-><init>()V

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->NOT_NUL:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    new-instance v0, Lorg/jboss/netty/buffer/d;

    invoke-direct {v0}, Lorg/jboss/netty/buffer/d;-><init>()V

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->CR:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    new-instance v0, Lorg/jboss/netty/buffer/e;

    invoke-direct {v0}, Lorg/jboss/netty/buffer/e;-><init>()V

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->NOT_CR:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    new-instance v0, Lorg/jboss/netty/buffer/f;

    invoke-direct {v0}, Lorg/jboss/netty/buffer/f;-><init>()V

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->LF:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    new-instance v0, Lorg/jboss/netty/buffer/g;

    invoke-direct {v0}, Lorg/jboss/netty/buffer/g;-><init>()V

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->NOT_LF:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    new-instance v0, Lorg/jboss/netty/buffer/h;

    invoke-direct {v0}, Lorg/jboss/netty/buffer/h;-><init>()V

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->CRLF:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    new-instance v0, Lorg/jboss/netty/buffer/i;

    invoke-direct {v0}, Lorg/jboss/netty/buffer/i;-><init>()V

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->NOT_CRLF:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    new-instance v0, Lorg/jboss/netty/buffer/j;

    invoke-direct {v0}, Lorg/jboss/netty/buffer/j;-><init>()V

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->LINEAR_WHITESPACE:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    new-instance v0, Lorg/jboss/netty/buffer/b;

    invoke-direct {v0}, Lorg/jboss/netty/buffer/b;-><init>()V

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->NOT_LINEAR_WHITESPACE:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    return-void
.end method


# virtual methods
.method public abstract find(Lorg/jboss/netty/buffer/ChannelBuffer;I)Z
.end method
