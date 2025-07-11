.class public Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$CursorRelative;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/utils/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CursorRelative"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntValueFromCursor(Landroid/database/Cursor;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cursor",
            "index"
        }
    .end annotation

    if-gez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 683
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLongValueFromCursor(Landroid/database/Cursor;I)J
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cursor",
            "index"
        }
    .end annotation

    if-gez p2, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 688
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    return-wide p1
.end method

.method public getStringValueFromCursor(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cursor",
            "index"
        }
    .end annotation

    if-gez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 693
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
