.class Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;
.super Ljava/lang/Object;


# instance fields
.field private stack:Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;

.field stackSize:I

.field final synthetic this$0:Lcom/google_mms/android/mms/pdu/PduComposer;

.field private toCopy:Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;


# direct methods
.method private constructor <init>(Lcom/google_mms/android/mms/pdu/PduComposer;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google_mms/android/mms/pdu/PduComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google_mms/android/mms/pdu/PduComposer;Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google_mms/android/mms/pdu/PduComposer;)V

    return-void
.end method


# virtual methods
.method copy()V
    .locals 4

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google_mms/android/mms/pdu/PduComposer;

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;

    iget-object v1, v1, Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;

    iget v3, v3, Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google_mms/android/mms/pdu/PduComposer;->arraycopy([BII)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;

    return-void
.end method

.method mark()Lcom/google_mms/android/mms/pdu/PduComposer$PositionMarker;
    .locals 3

    new-instance v0, Lcom/google_mms/android/mms/pdu/PduComposer$PositionMarker;

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google_mms/android/mms/pdu/PduComposer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google_mms/android/mms/pdu/PduComposer$PositionMarker;-><init>(Lcom/google_mms/android/mms/pdu/PduComposer;Lcom/google_mms/android/mms/pdu/PduComposer$PositionMarker;)V

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google_mms/android/mms/pdu/PduComposer;

    iget v1, v1, Lcom/google_mms/android/mms/pdu/PduComposer;->mPosition:I

    invoke-static {v0, v1}, Lcom/google_mms/android/mms/pdu/PduComposer$PositionMarker;->access$1(Lcom/google_mms/android/mms/pdu/PduComposer$PositionMarker;I)V

    iget v1, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    invoke-static {v0, v1}, Lcom/google_mms/android/mms/pdu/PduComposer$PositionMarker;->access$2(Lcom/google_mms/android/mms/pdu/PduComposer$PositionMarker;I)V

    return-object v0
.end method

.method newbuf()V
    .locals 2

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BUG: Invalid newbuf() before copy()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;-><init>(Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;)V

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google_mms/android/mms/pdu/PduComposer;

    iget-object v1, v1, Lcom/google_mms/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    iput-object v1, v0, Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google_mms/android/mms/pdu/PduComposer;

    iget v1, v1, Lcom/google_mms/android/mms/pdu/PduComposer;->mPosition:I

    iput v1, v0, Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;

    iput-object v1, v0, Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;->next:Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;

    iget v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google_mms/android/mms/pdu/PduComposer;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, v0, Lcom/google_mms/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google_mms/android/mms/pdu/PduComposer;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPosition:I

    return-void
.end method

.method pop()V
    .locals 4

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google_mms/android/mms/pdu/PduComposer;

    iget-object v0, v0, Lcom/google_mms/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google_mms/android/mms/pdu/PduComposer;

    iget v1, v1, Lcom/google_mms/android/mms/pdu/PduComposer;->mPosition:I

    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google_mms/android/mms/pdu/PduComposer;

    iget-object v3, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;

    iget-object v3, v3, Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    iput-object v3, v2, Lcom/google_mms/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google_mms/android/mms/pdu/PduComposer;

    iget-object v3, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;

    iget v3, v3, Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    iput v3, v2, Lcom/google_mms/android/mms/pdu/PduComposer;->mPosition:I

    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;

    iput-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;

    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;

    iget-object v2, v2, Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;->next:Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;

    iput-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;

    iget v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;

    iput-object v0, v2, Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;

    iput v1, v0, Lcom/google_mms/android/mms/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    return-void
.end method
