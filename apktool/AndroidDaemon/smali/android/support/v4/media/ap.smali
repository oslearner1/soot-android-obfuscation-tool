.class final Landroid/support/v4/media/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field private synthetic a:Landroid/support/v4/media/al;


# direct methods
.method constructor <init>(Landroid/support/v4/media/al;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/ap;->a:Landroid/support/v4/media/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/ap;->a:Landroid/support/v4/media/al;

    iget-object v0, v0, Landroid/support/v4/media/al;->c:Landroid/support/v4/media/ak;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/ak;->handleAudioFocusChange(I)V

    return-void
.end method
