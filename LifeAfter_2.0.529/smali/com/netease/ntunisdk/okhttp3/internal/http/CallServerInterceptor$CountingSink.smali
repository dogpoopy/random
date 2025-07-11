.class final Lcom/netease/ntunisdk/okhttp3/internal/http/CallServerInterceptor$CountingSink;
.super Lcom/netease/ntunisdk/okio/ForwardingSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/okhttp3/internal/http/CallServerInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CountingSink"
.end annotation


# instance fields
.field successfulCount:J


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okio/Sink;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/okio/ForwardingSink;-><init>(Lcom/netease/ntunisdk/okio/Sink;)V

    return-void
.end method


# virtual methods
.method public write(Lcom/netease/ntunisdk/okio/Buffer;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/netease/ntunisdk/okio/ForwardingSink;->write(Lcom/netease/ntunisdk/okio/Buffer;J)V

    iget-wide v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J

    return-void
.end method
