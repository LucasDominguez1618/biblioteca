import { useRouter } from "next/navigation";

export const useBrowser = () => {
  const router = useRouter();
  const toSignUpPage = () => router.push("/auth/sign-up");
  const toSignInPage = () => router.push("/auth/sign-in");
  return { toSignInPage, toSignUpPage } as const;
};
