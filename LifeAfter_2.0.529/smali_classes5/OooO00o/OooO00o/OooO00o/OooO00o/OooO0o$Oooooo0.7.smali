.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$Oooooo0;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOo0;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Oooooo0"
.end annotation


# direct methods
.method public constructor <init>([I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOo0;-><init>([I)V

    return-void
.end method


# virtual methods
.method public OooO00o(I)I
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p1

    return p1
.end method
