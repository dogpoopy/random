.class Lcom/netease/mrzhna/ScreenShotObserver$MediaContentObserver;
.super Landroid/database/ContentObserver;
.source "ScreenShotObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mrzhna/ScreenShotObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaContentObserver"
.end annotation


# instance fields
.field private mContentUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/netease/mrzhna/ScreenShotObserver;


# direct methods
.method public constructor <init>(Lcom/netease/mrzhna/ScreenShotObserver;Landroid/net/Uri;Landroid/os/Handler;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/netease/mrzhna/ScreenShotObserver$MediaContentObserver;->this$0:Lcom/netease/mrzhna/ScreenShotObserver;

    .line 263
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 264
    iput-object p2, p0, Lcom/netease/mrzhna/ScreenShotObserver$MediaContentObserver;->mContentUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 269
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 270
    iget-object p1, p0, Lcom/netease/mrzhna/ScreenShotObserver$MediaContentObserver;->this$0:Lcom/netease/mrzhna/ScreenShotObserver;

    iget-object v0, p0, Lcom/netease/mrzhna/ScreenShotObserver$MediaContentObserver;->mContentUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/netease/mrzhna/ScreenShotObserver;->access$100(Lcom/netease/mrzhna/ScreenShotObserver;Landroid/net/Uri;)V

    return-void
.end method
