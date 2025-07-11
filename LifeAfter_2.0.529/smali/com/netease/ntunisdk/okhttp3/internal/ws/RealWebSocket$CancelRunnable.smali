.class final Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$CancelRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CancelRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$CancelRunnable;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$CancelRunnable;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;->cancel()V

    return-void
.end method
