.class Lcom/netease/ntunisdk/okio/Okio$3;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lcom/netease/ntunisdk/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/okio/Okio;->blackhole()Lcom/netease/ntunisdk/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public timeout()Lcom/netease/ntunisdk/okio/Timeout;
    .locals 1

    .line 210
    sget-object v0, Lcom/netease/ntunisdk/okio/Timeout;->NONE:Lcom/netease/ntunisdk/okio/Timeout;

    return-object v0
.end method

.method public write(Lcom/netease/ntunisdk/okio/Buffer;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    invoke-virtual {p1, p2, p3}, Lcom/netease/ntunisdk/okio/Buffer;->skip(J)V

    return-void
.end method
