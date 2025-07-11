.class public abstract Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Listener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# static fields
.field public static final REFUSE_INCOMING_STREAMS:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Listener$1;

    invoke-direct {v0}, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Listener$1;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Listener;->REFUSE_INCOMING_STREAMS:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Listener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettings(Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection;)V
    .locals 0

    return-void
.end method

.method public abstract onStream(Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Stream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
