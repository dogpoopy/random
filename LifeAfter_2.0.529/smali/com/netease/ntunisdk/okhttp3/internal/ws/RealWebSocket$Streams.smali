.class public abstract Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$Streams;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Streams"
.end annotation


# instance fields
.field public final client:Z

.field public final sink:Lcom/netease/ntunisdk/okio/BufferedSink;

.field public final source:Lcom/netease/ntunisdk/okio/BufferedSource;


# direct methods
.method public constructor <init>(ZLcom/netease/ntunisdk/okio/BufferedSource;Lcom/netease/ntunisdk/okio/BufferedSink;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    iput-object p2, p0, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$Streams;->source:Lcom/netease/ntunisdk/okio/BufferedSource;

    iput-object p3, p0, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$Streams;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    return-void
.end method
