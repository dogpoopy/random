.class public final enum Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;
.super Ljava/lang/Enum;
.source "ChooseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClickType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;

.field public static final enum CANCEL:Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;

.field public static final enum IMAGE:Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;

.field public static final enum VIDEO:Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 43
    new-instance v0, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;->IMAGE:Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;

    new-instance v1, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;

    const-string v3, "VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;->VIDEO:Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;

    new-instance v3, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;

    const-string v5, "CANCEL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;->CANCEL:Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 42
    sput-object v5, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;->$VALUES:[Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 42
    const-class v0, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;
    .locals 1

    .line 42
    sget-object v0, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;->$VALUES:[Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;

    return-object v0
.end method
