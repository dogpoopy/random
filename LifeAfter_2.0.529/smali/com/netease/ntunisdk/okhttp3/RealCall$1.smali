.class Lcom/netease/ntunisdk/okhttp3/RealCall$1;
.super Lcom/netease/ntunisdk/okio/AsyncTimeout;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/okhttp3/RealCall;-><init>(Lcom/netease/ntunisdk/okhttp3/OkHttpClient;Lcom/netease/ntunisdk/okhttp3/Request;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okhttp3/RealCall;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$1;->this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;

    invoke-direct {p0}, Lcom/netease/ntunisdk/okio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method protected timedOut()V
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$1;->this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/RealCall;->cancel()V

    return-void
.end method
