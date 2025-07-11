.class final Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$Close;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Close"
.end annotation


# instance fields
.field final cancelAfterCloseMillis:J

.field final code:I

.field final reason:Lcom/netease/ntunisdk/okio/ByteString;


# direct methods
.method constructor <init>(ILcom/netease/ntunisdk/okio/ByteString;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$Close;->code:I

    iput-object p2, p0, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$Close;->reason:Lcom/netease/ntunisdk/okio/ByteString;

    iput-wide p3, p0, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    return-void
.end method
