.class Lcom/netease/androidcrashhandler/anr/ANRWatchDog$1;
.super Ljava/lang/Object;
.source "ANRWatchDog.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;


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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppNotResponding(Lcom/netease/androidcrashhandler/anr/ANRError;)V
    .locals 0

    .line 44
    throw p1
.end method
