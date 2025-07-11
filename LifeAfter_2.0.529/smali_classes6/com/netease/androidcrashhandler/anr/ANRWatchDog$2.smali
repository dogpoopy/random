.class Lcom/netease/androidcrashhandler/anr/ANRWatchDog$2;
.super Ljava/lang/Object;
.source "ANRWatchDog.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/anr/ANRWatchDog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method
