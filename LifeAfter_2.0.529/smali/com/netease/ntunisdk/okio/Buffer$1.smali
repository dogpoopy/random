.class Lcom/netease/ntunisdk/okio/Buffer$1;
.super Ljava/io/OutputStream;
.source "Buffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/okio/Buffer;->outputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/okio/Buffer;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okio/Buffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/ntunisdk/okio/Buffer$1;->this$0:Lcom/netease/ntunisdk/okio/Buffer;

    .line 76
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/ntunisdk/okio/Buffer$1;->this$0:Lcom/netease/ntunisdk/okio/Buffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/Buffer$1;->this$0:Lcom/netease/ntunisdk/okio/Buffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/okio/Buffer;->writeByte(I)Lcom/netease/ntunisdk/okio/Buffer;

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/Buffer$1;->this$0:Lcom/netease/ntunisdk/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/ntunisdk/okio/Buffer;->write([BII)Lcom/netease/ntunisdk/okio/Buffer;

    return-void
.end method
