.class Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;
.super Lcom/netease/ntunisdk/okhttp3/internal/NamedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->applyAndAckSettings(ZLcom/netease/ntunisdk/okhttp3/internal/http2/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;


# direct methods
.method varargs constructor <init>(Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-direct {p0, p2, p3}, Lcom/netease/ntunisdk/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v0, v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection;->listener:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Listener;

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v1, v1, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Listener;->onSettings(Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection;)V

    return-void
.end method
