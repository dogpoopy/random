.class public final Lcom/netease/mpay/oversea/cb$b;
.super Ljava/lang/Object;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->O:Lcom/netease/mpay/oversea/g6;

    invoke-static {v0}, Lcom/netease/mpay/oversea/cb;->a(Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/mpay/oversea/cb$b;->a:Ljava/lang/String;

    return-void
.end method
